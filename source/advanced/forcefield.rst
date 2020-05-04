.. _forcefield_top:

力場に関して
============================================

Universal Force Field
-------------------------------

   Winmostarの分子動力学計算（Gromacs, LAMMPS）で利用できるUniversal Force Field（以下、UFF）は次のように実装されています。
   まず、OpenBabelのUFFパラメータアサイン機能を利用して、対象となる分子にパラメータをアサインします。その際に、UFFの原著論文 [Rappe1992]_ に書かれたatom typeに相当しない原子については、Coordinationを自動で変更して近いatom typeがアサインされます。詳細は、OpenBabelのソースコードを参照してください。
   UFFの関数形はGromacs、LAMMPSで使用可能な関数で完全に再現することができません。そのため、OBGMX [Garberoglio2012]_ の方法でGromacsおよびLAMMPSで使用可能な関数に係数を変換しています。
   また、OBGMXの方法では、square planar、octahedral構造におけるangleポテンシャルで、極小点が1か所しかないために適切な安定構造を与えないため、Winmostarでは4次関数を使用しています。4次関数の係数は、以下の方針で決定しました。
   
      - 2か所のポテンシャル極小点の位置（角度、エネルギー）
      - 2か所のポテンシャル極小点の間にある極大点のエネルギー
      - ただし、LAMMPSの場合は0次の係数を設定できないため、エネルギーは定数だけシフト（微分である力はGromacsとLAMMPSで一致）
   
   .. [Rappe1992] A.K. Rappe, C.J. Casewit, K.S. Colwell, W.A. Goddard III and W.M. Skiff, J. Am. Chem. Soc., 114 (1992), 10024–10035.
   .. [Garberoglio2012] G. Garberoglio, J. Comp. Chem., 33 (2012), 2204-8.
