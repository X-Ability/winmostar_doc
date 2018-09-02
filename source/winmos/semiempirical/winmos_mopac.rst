.. include:: ../../common.rst

.. _semiempirical_mopac_top:

:menuselection:`半経験QM --> MOPAC` メニュー
============================================

   WinmostarにはMOPAC6とMOPAC7が同梱されています。
   それ以外のMOPACを利用する場合は、別途代理店よりMOPAC本体を購入し、環境設定ウインドウにてパスを設定してください。

.. _semiempirical_mopac_flow:

MOPAC計算の処理の流れ
----------------------------

   1) 計算したい分子をメインウインドウで作成します。
   
   2) AM1ハミルトニアンでの構造最適化（EF）計算以外を実行する場合は、 :ref:`semiempirical_mopac_keyword` にて計算条件を設定します。

   3) :ref:`semiempirical_mopac6_start` ～ :ref:`semiempirical_mopacx_start` を選んでMOPACの入力ファイル（dat）を保存すると、MOPACが実行されます。計算結果はdatファイルと同名のarc, dat, outファイルに出力されます。また、接尾辞が :file:`_temp` の作業ディレクトリに中間ファイルが収められます。
   
   4) :ref:`semiempirical_mopac_mo` など各種の結果処理機能を選択した時に、 :guilabel:`開く` ダイアログでデフォルトで選択されるファイルは、メインウインドウで開かれたファイルに紐づけられた結果ファイルとなります。
   
.. _semiempirical_mopac_keyword:

キーワード設定
------------------------

   MOPAC計算用のキーワードを設定します。設定後 :guilabel:`Set` ボタンをクリックします。

   Hamiltonian
      使用するハミルトニアンを指定します。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1
      
         * - ハミルトニアン
           - 実装されているMOPACのバージョン
      
         * - AM1
           - MOPAC 6, MOPAC 7, MOPAC 93, MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006, MOPAC 2009, MOPAC 2012

         * - PM3
           - MOPAC 6, MOPAC 7, MOPAC 93, MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006, MOPAC 2009, MOPAC 2012

         * - RM1
           - MOPAC 2007

         * - AM1 EXTERNAL=RM1.rm1
           - MOPAC 7.1, MOPAC 93, MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006, MOPAC 2009, MOPAC 2012

         * - PM5
           - MOPAC 2002, MOPAC 2006

         * - PM6
           - MOPAC 2007, MOPAC 2009, MOPAC 2012

         * - PM7
           - MOPAC 2012

         * - MINDO/3
           - MOPAC 6, MOPAC 7, MOPAC 93, MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006

         * - MNDO
           - MOPAC 6, MOPAC 7, MOPAC 93, MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006, MOPAC 2009, MOPAC 2012

         * - MNDO-d
           - MOPAC 97, MOPAC 2000, MOPAC 2002, MOPAC 2006, MOPAC 2009, MOPAC 2012

   Method
      計算方法を指定します。

      EF
         EF (Eigen Vector Following)法による構造最適化計算を行います。
      TS
         遷移状態を求めます。
      FORCE
         振動解析を行います。
      1SCF
         1回だけSCF計算を行います。（構造最適化を行いません。）
      IRC
         固有反応座標計算を行います。エネルギーは保存されません。
      IRC=1
         1番目の基準振動の逆方向を指定して固有反応座標計算を行います。
      IRC=-1
         1番目の基準振動の正方向を指定して固有反応座標計算を行います。
   Charge
      電荷の値を指定します。
   Multiplicity
      多重度を指定します。
   OPEN
      開殻計算における電子数と軌道数を指定します。
   MM
      MMOK
         CONH結合に分子力学補正を加えます。 
      NOMM
         CONH結合に分子力学補正を加えません。 
   GNORM
      エネルギー勾配ノルムの閾値を指定します。
   LARGE
      指定したサイクルごとに情報を出力します。
   GRAPH
      分子軌道をグラフィックス表示するためのファイルを作成します。（GPAGH/GRAPHF)
   EXTERNAL
      ディスク上のパラメータ・ファイルを読み込みます。
   STEP
      反応座標計算におけるきざみ幅を指定します。
   POINT
      反応座標計算における計算点数を指定します。
   STEP1/2
      グリッド計算におけるきざみ幅を指定します。
   POINT1/2
      グリッド計算における計算点数を指定します。
   AUX
      他のプログラムで利用するためのAUXファイルを作成します。
   BONDS
      最終の結合次数行列を出力します。
   ENPART
      エネルギーを1中心および2中心項に分解するエネルギー分割を指定します。
   ESP
      静電ポテンシャルを計算します。
   EXCITED
      一重項第一励起状態を最適化します。
   GEO-OK
      原子が異常に近接している場合のチェックを無視します。
   NOINTER
      原子間距離を出力しません。
   OLDFPC
      古いバージョンのMOPACと同じ基準物理量の値を用います。
   POLAR
      分極率を計算します。
   PRECISE
      収束判定条件を 100 倍厳しくします。
   SYMMETRY
      対称性や等価条件を利用して構造を定義します。
   UHF
      非制限Hartree-Fock計算を実行します。
   VECTORS
      最終固有ベクトル（波動関数）を出力します。
   XYZ
      XYZ座標系を用いて計算を行います。
   Others
      その他のキーワードを記入します。
   Default Keywords
      Load
         保存してある設定を読み込みます。
      Save
         設定を保存します。
      Reset
         初期化します。

ジョブマネージャで実行
------------------------

   保存済みのMOPAC形式データから、キーワード部分をインポートします。

キーワード読込
------------------------

   MOPAC実行時に :ref:`winmosjm_top` を使用するか設定します。

.. _semiempirical_mopac6_start:

(1)MOP6W70実行
------------------------

   :ref:`semiempirical_mopac_flow` の内容に基づきMOPAC6が実行されます。
   MOPAC6はWinmostarに内蔵されています。

.. _semiempirical_mopac7_start:

(2)MOP7W70実行
------------------------

   :ref:`semiempirical_mopac_flow` の内容に基づきMOPAC7が実行されます。
   MOPAC7はWinmostarに内蔵されています。

.. _semiempirical_mopacx_start:

(3)MOPACX実行
------------------------

   :ref:`semiempirical_mopac_flow` の内容に基づきMOPACが実行されます。
   Winmostarに内蔵されていないMOPACに対し、環境設定ウインドウにてパスを通してから使用してください。。

outファイル編集
---------------------

   MOPACのログファイル（ :file:`\*.out` ）をテキストエディタで開きます。

arcファイル編集
---------------------

   MOPACのログのサマリーのファイル（ :file:`\*.arc` ）をテキストエディタで開きます。

.. _semiempirical_mopac_mo:

:menuselection:`インポート --> MO(mgf)`
-----------------------------------------------------

   MOPACが出力したmgfファイルを選択し、分子軌道を表示します。 
   :ref:`キーワード <semiempirical_mopac_keyword>` で ``GRAPHF`` が設定されている必要があります。
   サブウインドウの操作方法は :ref:`mo_top` を参照してください。

.. _semiempirical_mopac_charge:

:menuselection:`インポート --> Charge,Dipole(arc)`
-----------------------------------------------------

   MOPACが出力したarcファイルを選択し、電荷、ダイポールを表示します。
   :guilabel:`Mulliken Charge` として読み込まれます。

:menuselection:`インポート --> Animation(arc)`
-----------------------------------------------------

   MOPACが出力したarcファイルを選択し、分子構造のアニメーションを表示します。
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

:menuselection:`インポート --> IRC,STEP(out)`
-----------------------------------------------------

   MOPACが出力したoutファイルを選択し、IRC計算のアニメーションを表示します。
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

:menuselection:`インポート --> Force(out)`
-----------------------------------------------------

   MOPACが出力したoutファイルを選択し、振動スペクトル（IRスペクトル）を表示します。
   :ref:`キーワード <semiempirical_mopac_keyword>` で振動計算が設定されている必要があります。
   サブウインドウの操作方法は :ref:`animation_top` を参照してください。

