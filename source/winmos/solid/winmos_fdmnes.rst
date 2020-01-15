.. include:: ../../common.rst

.. _solid_fdmnes_top:

:menuselection:`固体 --> FDMNES` メニュー
=====================================================

   FDMNESに関するメニューです。
   
   FDMNESをインストールする方法は :ref:`install_install` に記載しています。
   
キーワード設定
------------------------

   FDMNESの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`solid_fdmnes_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。

   Target Atom
      XANESスペクトルの測定対象の原子(Absorber)を指定します。
      :guilabel:`Set Atom` ボタンをクリックすると、メインウィンドウでマーカーが付いた原子が設定されます。。
   Edge
      取得したいXANESスペクトルの電子殻を選択します。
   Range
      取得したいXANESスペクトルの範囲を指定します。
   Cluster Radius
      FDMNES内部にてシミュレーションセル（スーパーセル）を展開して作成されるクラスタの半径を指定します。
      この値が大きいほどバルクの状態に近づきますが、処理速度は低下します。
   Method
      計算手法を選択します。
   Convolution
      ローレンツ関数で畳み込みブロードニングしたスペクトルを取得します。
   Calc LDOS
      局所状態密度（LDOS）を、ファイル名末尾が_sd*.txtとなっているファイルの中に出力します。
   Definition for Energy
      XANESスペクトルを表示する際の横軸（エネルギー）の定義を指定します。

.. _solid_fdmnes_start:

実行
------------------------

   FDMNESを実行します。
   
   実行に伴い以下のファイルが生成されます。（主要なファイルのみ表示） 
   例として入力ファイルが :file:`cu.fdmnes` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | logファイル
             | :file:`cu.log`
           - 計算のログファイルです。
         * - | batファイル
             | :file:`cu.bat`
           - FDMNESを実行するためのバッチファイルです。
         * - | convファイル
             | :file:`cu_conv.txt`
           - XANESスペクトルなどのデータが記録されたテキストファイルです。
           
   ジョブは :ref:`winmosjm_top` を通じて実行されます。

ログを表示 (log)
----------------------------

   ログファイルをテキストエディタで開きます。

結果解析
---------------------

XANESスペクトル
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   convファイル（ :file:`\*_conv.txt` ）を選択し、XANESスペクトルを表示します。
   
   