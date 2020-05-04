.. _forcefield_top:

力場に関して
============================================

.. _forcefield_uff:

Universal Force Field
-------------------------------

   Winmostarの分子動力学計算（Gromacs, LAMMPS）で利用できるUniversal Force Field（以下、UFF）は次のように実装されています。
   
   まず、OpenBabelのUFFパラメータアサイン機能を利用して、対象となる分子にパラメータをアサインします。その際に、UFFの原著論文 [Rappe1992]_ に書かれたatom typeに相当しない原子については、Coordinationを自動で変更して近いatom typeがアサインされます。詳細は、OpenBabelのソースコードを参照してください。
   
   UFFの関数形はGromacs、LAMMPSで使用可能な関数で完全に再現することができません。そのため、OBGMX [Garberoglio2012]_ の方法でGromacsおよびLAMMPSで使用可能な関数向けに係数を変換しています。
   
   また、OBGMXの方法では、square planar、octahedral構造におけるAngleポテンシャルで、極小点が1か所しかないために適切な安定構造を与えないため、Winmostarでは4次関数を使用しています。4次関数の係数は、以下の方針で決定しました。
   
      - 2か所のポテンシャル極小点の位置（角度、エネルギー）を再現する
      - 2か所のポテンシャル極小点の間にある極大点のエネルギーを再現する
      - ただし、LAMMPSの場合は0次の係数を設定できないため、エネルギーのみ定数分シフトする（エネルギーの微分である力はGromacsとLAMMPSで一致するので、実用上の影響はないと思われる）
      
   
   上記の方針のため、得られる平衡構造と分布はUFF原著のポテンシャルを使った場合から大きく変化しないと期待されます。なお、広く使われているOpenBabelにおいても、Angleポテンシャルに独自のペナルティ関数を追加しており、厳密にはUFF原著のポテンシャルからずれがあります。
   
   Winmostarではsquare planer, octahedralのAngleの係数を以下のようにしました。 :math:`C_{i, \mathrm{gro}}` はGromacsの4次関数の係数、 :math:`k_{a,\mathrm{uff}}` はUFFの係数です。LAMMPSの場合は :math:`C_{2, \mathrm{gro}}` と :math:`C_{4, \mathrm{gro}}` だけが使われます。
      
      .. math::
         C_{\mathrm{0,gro}} &= \frac{1}{4}(2-\sqrt{2})k_{a,\mathrm{uff}} \\
         C_{\mathrm{1,gro}} &= 0\\
         C_{\mathrm{2,gro}} &= - \frac{8 }{\pi^2} (2-\sqrt{2})k_{a,\mathrm{uff}}\\
         C_{\mathrm{3,gro}} &= 0\\
         C_{\mathrm{4,gro}} &= \frac{64 }{\pi^4}(2-\sqrt{2})k_{a,\mathrm{uff}} \\
         \theta_{0,\mathrm{gro}} &= \frac{3}{4}\pi\\
         
   
   .. [Rappe1992] A.K. Rappe, C.J. Casewit, K.S. Colwell, W.A. Goddard III and W.M. Skiff, J. Am. Chem. Soc., 114 (1992), 10024–10035.
   .. [Garberoglio2012] G. Garberoglio, J. Comp. Chem., 33 (2012), 2204-8.
