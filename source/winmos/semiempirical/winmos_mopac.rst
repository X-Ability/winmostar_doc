.. include:: ../../common.rst

.. _semiempirical_mopac_top:

:menuselection:`半経験QM --> MOPAC` メニュー
============================================

   MOPACに関するメニューです。
   
   MOPAC6とMOPAC7はWinmostarに同梱されています。
   それ以外のMOPACを利用する場合は、別途代理店よりMOPAC本体を購入し、環境設定ウインドウにてパスを設定してください。

.. _semiempirical_mopac_keyword:

キーワード設定
------------------------

   MOPACの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウインドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save as Default` ボタンで現在の状態をデフォルトの状態として保存します。
   :menuselection:`Save as Default --> Clear Default Settings` で保存されてデフォルトの状態を出荷時の状態に戻します。

   Hamiltonian
      使用するハミルトニアンを指定します。MOPACの各パージョンがサポートするハミルトニアンは以下の通りです。
   
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

キーワード読み込み
------------------------
   既存のMOPACの入力ファイルから、キーワード（計算条件）のみを読み込みます。

.. _semiempirical_mopac_start:

(1) MOP6W70実行, (2) MOP7W70実行, (3) MOPACX実行
----------------------------------------------------

   メインウインドウでMOPACの入力ファイルが開かれている場合は、そのファイルを使ってMOPACを実行します。
   開かれていない場合は、MOPACの入力ファイルを保存した上でMOPACを実行します。
   
   :guilabel:`(1) MOP6W70実行` , :guilabel:`(2) MOP7W70実行`, :guilabel:`(3) MOPACX実行` の違いは、起動するMOPACのプログラムパスです。
   プログラムパスは、 :menuselection:`ツール --> 環境設定 --> プログラムパス` で変更することができます。
   デフォルトで設定されている :guilabel:`MOP6W70` はMOPAC6、 :guilabel:`MOP7W70` はMOPAC7で、どちらもWinmostarに内蔵されているものです。
   :guilabel:`(3) MOPACX実行` にはMOPAC2012などのプログラムを指定して使うことを想定しています。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.dat` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | outファイル
             | :file:`water.out`
           - 計算結果の概略をまとめたテキストファイルです。
         * - | arcファイル
             | :file:`water.arc`
           - 詳細な計算結果をまとめたテキストファイルです。
         * - | mgfファイル
             | :file:`water.mgf`
           - | キーワードGRAPHを指定したことで出力されるファイルで、
             | 分子軌道の描画に使われる情報を含みます。
         * - | 作業ディレクトリ
             | :file:`water_temp\\`
           - | 作業ディレクトリです。

ログを表示 (out)
---------------------

   outファイルをテキストエディタで開きます。

ログを表示 (out)
---------------------

   arcファイルをテキストエディタで開きます。

.. _semiempirical_mopac_mo:

分子軌道, 電子密度 (mgf)
-----------------------------------------------------

   mgfファイルを選択し、分子軌道を表示します。 
   
   :ref:`キーワード <semiempirical_mopac_keyword>` で ``GRAPHF`` が設定されている必要があります。
   サブウインドウの操作方法は :ref:`mo_top` , :ref:`cube_top` を参照してください。

.. _semiempirical_mopac_charge:

電荷 (arc)
-----------------------------------------------------

   arcファイルを選択し、電荷、ダイポールを表示します。
   
   :menuselection:`表示 --> ラベル/電荷 --> Mulliken電荷` を選択すると電荷が表示されます。

アニメーション (arc)
-----------------------------------------------------

   arcファイルを選択し、分子構造のアニメーションを表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

アニメーション (IRC,STEP)(out)
-----------------------------------------------------

   outファイルを選択し、IRC計算のアニメーションを表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

振動スペクトル (out)
-----------------------------------------------------

   outファイルを選択し、振動スペクトル（IRスペクトル）を表示します。
   
   :ref:`キーワード <semiempirical_mopac_keyword>` で振動計算が設定されている必要があります。
   サブウインドウの操作方法は :ref:`ir_top` を参照してください。

.. _mopac_use_jm:

ジョブマネージャで実行
------------------------

   チェックが入っている場合は、MOPACを実行する際に :ref:`winmosjm_top` を使用します。
   入っていない場合は、MOPACでの計算が終わるまでWinmostarは待ち状態となり、MOPACの出力結果は自動でメインウインドウに読み込まれます。
   
   :ref:`preferences_top` からも設定することができます。
   
