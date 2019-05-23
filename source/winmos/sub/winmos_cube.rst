.. _cube_top:

MO Plotウィンドウ
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
      描画する物理量を選択します。 

      - MO
         :guilabel:`Selected MO` で選択された分子軌道の3次元分布です。
      - Surface
         VDW半径程度の距離（厳密ではありません）に描画される分子表面です。
      - ESP2
         :guilabel:`ESP2` はPopulation解析後の点電荷から算出する静電ポテンシャルの3次元分布です。 :guilabel:`ESP` よりも高速に動作します。
      - ESP2/Surface
         :guilabel:`ESP2` の情報を、分子表面上で表示します。
      - MO/Surface
         :guilabel:`MO` の情報を、分子表面上で表示します。
      - Density
         電子密度の3次元分布です。
      - ESP
         電子状態計算で直接計算された静電ポテンシャルの3次元分布です。

      .. hint::
         以下の手順で、 :guilabel:`ESP/Surface` に相当する、分子表面上でのESPを表示できます。
         
            1. :guilabel:`Dump cube file` にチェックを入れ、 :guilabel:`Quantity` で :guilabel:`Density` を選択する。
            2. :guilabel:`Draw` ボタンを押と、 :file:`*_den.cube` というファイルが生成される。
            3. :guilabel:`Quantity` で :guilabel:`ESP` を選択する。
            4. :guilabel:`Draw` ボタンを押と、 :file:`*_esp.cube` というファイルが生成される。この処理員は数分掛かることがある。
            5. :file:`*_den.cube` をWinmostarのメインウィンドウで開くと、 :guilabel:`Cube Plot` というウィンドウが開く。
            6. :guilabel:`File 2` の横の :guilabel:`...` ボタンをクリックし、 :file:`*_esp.cube` を開く。
            7. :guilabel:`Draw` ボタンをクリックする。

      .. hint::
         Windows版Gaussianに同梱されているCubegenプログラムをお持ちの場合は、 :guilabel:`ESP` の表示を高速化できます。
         Cubeファイルを開いた際に出現する :guilabel:`Cubegen` ウィンドウにおいて、 :guilabel:`Use Gaussian's cubegen` チェックボックスにチェックを入れてください。
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
      ボリュームデータをメインウィンドウで描画します。（deprecated）
   :guilabel:`Close` ボタン
      このウィンドウを閉じます。 

