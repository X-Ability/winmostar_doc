.. _cube_top:

MO Plotウインドウ
============================================

   分子軌道、静電ポテンシャル、各種cubeファイルなどのボリュームデータの表示を調整します。

   :menuselection:`File --> Open` メニュー
      描画したいcubeファイルを選びます。
   :menuselection:`File --> Export VRML` メニュー
      VRML形式で出力し、そのファイルを開きます。
   :menuselection:`File --> Open Jmol` メニュー
      Jmolで表示します。
   :menuselection:`File --> Close` メニュー
      このウィンドウを閉じます。
   :guilabel:`Quantity` プルダウンメニュー
      描画する物理量を選択します。 :guilabel:`ESP2` はPopulation解析後の点電荷から算出する静電ポテンシャルのため、 :guilabel:`ESP` よりも高速に動作します。 :guilabel:`Surface` が付く場合は、分子表面上での物理量の分布を表示します。
   :guilabel:`Selected MO`
      描画する分子軌道の番号を指定します。 :ref:`mo_top` で分子軌道を選択するとこの場所に値がセットされます。
   :guilabel:`Show Diagram` ボタン
      :ref:`mo_top` を表示します。
   :guilabel:`alpha/beta` ボタン
      スピンを選択します。
   :guilabel:`Draw Style` プルダウンメニュー
      等値面を格子(Mesh)またはソリッド(Solid)モデルで表示します。
   :guilabel:`Transparency`
      透明度を指定します。（0: 不透明、1: 透明）
   :guilabel:`Isosurface Value`
      描画する等値面の値を指定します。
   :guilabel:`Points`
      各辺の格子点数を指定します。
   :guilabel:`Scale`
      描く範囲を指定するスケーリング係数を指定します。
   :guilabel:`Draw boundary` チェックボックス
      cubeファイルの境界に線を描画します。Quantum ESPRESSO, OpenMXなどのバンド計算で主に使用します。
   :guilabel:`Draw contour Map` チェックボックス
      指定した断面において等高線を描画します。
   :guilabel:`Dump cube file` チェックボックス
      :guilabel:`Draw` ボタンを押したときに、描画と同時にcubeファイルを出力します。
   :guilabel:`Draw` ボタン
      ボリュームデータを :ref:`winmos3d_top` を用いて描画します。
   :guilabel:`Draw (2D)` ボタン
      ボリュームデータをメインウインドウで描画します。（deprecated）
   :guilabel:`Close` ボタン
      このウィンドウを閉じます。 

