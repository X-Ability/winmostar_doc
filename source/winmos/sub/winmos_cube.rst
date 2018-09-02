.. _cube_top:

MO Plotウインドウ
============================================

   分子軌道、静電ポテンシャル、各種cubeファイルなどのボリュームデータの表示を調整します。

   :menuselection:`File --> Open` メニュー
      :guilabel:`開く` ダイアログを表示し、cubeファイルを読み込みます。
   :menuselection:`File --> Exit` メニュー
      このウィンドウを閉じます。
   Save Cube
      描画と同時にcubeファイルを保存するか指定します。
   Boundary
      cubeファイルの境界に線を描画します。Quantum ESPRESSO, OpenMXなどのバンド計算で主に使用します。
   MeshまたはContour Map
      等値面を格子またはソリッドモデルで表示します。
   Contour Map
      指定した断面において等高線を描画します。
   Trans
      透明度を指定します。（0: 不透明、1: 透明）
   alpha/beta
      スピンを選択します。
   MO、Density、ESPまたはESP2
      描画する物理量を選択します。 :guilabel:`ESP2` はPopulation解析後の点電荷から算出する静電ポテンシャルのため、ESPよりも高速に動作します。 :guilabel:`Surface` が付く場合は、分子表面上での物理量の分布を表示します。
      
   Number of MO
      描画する分子軌道の番号を指定します。 :ref:`mo_top` で分子軌道を選択するとこの場所に値がセットされます。
   Energy
      :ref:`mo_top` を表示します。
   Iso. Level 
      描画する等値面の値を指定します。
   Points
      各辺の格子点数を指定します。
   Scale
      描く範囲を指定するスケーリング係数を指定します。
   3D
      ボリュームデータを:ref:`winmos3d_top` を用いて描画します。
   2D
      ボリュームデータをメインウインドウで描画します。（deprecated）
   VRML
      VRML形式で出力し、そのファイルを開きます。
   Quit
      このウィンドウを閉じます。 
   Jmol
      Jmolで表示します。
