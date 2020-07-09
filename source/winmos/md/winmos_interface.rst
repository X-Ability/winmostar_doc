.. include:: ../../common.rst

.. _md_interface_top:

:menuselection:`MD --> 界面ビルダ` メニュー
============================================

   あらかじめ用意された二つのシミュレーションセルのファイル（mol2またはcif形式）を接合して界面モデルを作成します。 :ref:`preferences_top` で新仕様と旧仕様の機能を切り替えられます。新仕様の機能は次の通りです。
   
   Cellタブ
      界面を挟む2相（Cell1とCell2）を指定します。
   
      Use displayed cell
         メインウィンドウに表示されているモデルを相に指定します。
      Load from file
         CIFまたはmol2形式で保存されたモデルを相に指定します。
         
   Directionタブ
      Axis perpendicular to interface
         界面垂直方向の軸を指定します。
      Order
         Cell1とCell2を接合する順番を指定します。
      Interval
         Cell1とCell2の間隔を指定します。
         
         Specify interval between cell boundaries
            入力した値は、セル境界間の距離となります。
         Place atoms on cell boundaries on both sides
            チェックを入れると、セル境界直上に置かれた原子を、界面垂直方向の両サイドにコピーして配置します。 :guilabel:`Axis perpendicular to interface` がc-axisの場合、c軸上（直方体セルの場合はz軸）の分率座標が0または1の原子は、分率座標がそれぞれ1または0の位置にコピーされます。
         Specify interval on selected axis between outermost atoms
            入力した値は、 :guilabel:`Axis perpendicular to interface` で選択した軸上のもっとも外側の原子間の距離となります。
      Adjusting cell size parallel to interface
         界面水平方向のセルサイズの調整方法を指定します。
         
         Scale both cells to average size
            作成される界面モデルの界面水平方向のセルサイズが、Cell1とCell2のセルサイズの平均値となるよう、原子位置をアフィン変形します。
         Scale to size of...
            選択したセルサイズに、他方のセルサイズを合わせるよう、原子位置をアフィン変形します。
         Extend size of smaller cell while keeping atomic positions
            原子位置は変更せず、小さい方のセルサイズを大きい方のセルサイズに変更します。
   Repeatタブ
      Number of cells
         界面モデルの作成時に、Cell1およびCell2のスーパーセルの個数を指定します。 :guilabel:`Suggest` ボタンをクリックすると、Cell1、Cell2それぞれどの個数にするとセルサイズの比がいくつになるかを表示します。 :guilabel:`Ratio` が1に近い組み合わせを選ぶことが推奨されます。
      Operation for atoms outside each cell
         セルの外側に位置する原子があった場合の扱いを指定します。
            
            Wrap for each molecule
               周期境界を考慮して、分子単位でセルの内側に位置を移動させます。
            Wrap for each atom
               周期境界を考慮して、原子単位でセルの内側に位置を移動させます。
            Do nothing
               何もしません。
   Buildボタン
      設定された内容に基づき界面モデルを作成します。

   旧仕様の機能は次の通りです。

   Cell Files
      接合させる2つのセル（Cell 1および2）の情報を指定します。各項目を設定後[Next]ボタンをクリックします。

      Cell 1およびCell 2
         [Browse]
            接合させるファイル（mol2またはcif形式）を指定します。ファイルをドラッグアンドドロップして指定することも可能です。
         [Lattice Constants]
            [a],[b],[c],[Alpha],[Beta],[Gamma]
               セル定数が表示されます。

   Direction
      セルを接合させる方向およびセル間の間隔を指定します。各項目を設定後[Next]ボタンをクリックします。

      Direction
         [a-axis]
            a軸方向に沿って２つのセルを結合します。
         [b-axis]
            b軸方向に沿って２つのセルを結合します。
         [c-axis]
            c軸方向に沿って２つのセルを結合します。
      Order
         [Normal]
            Cell 1にCell 2を重ねます。
         [Reverse]
            Cell 2にCell 1を重ねます。
      [Interval]
         セル間の間隔を指定します。2面間の距離ではなく、軸に沿った長さとなります。
      [Scaling cells to average size]
         セルの大きさに違いがある場合、平均サイズに伸縮します。
      [Padding small cell to the size of large cell]
         セルの大きさに違いがある場合、小さい方のセルに真空を入れて、大きい方のセルに合わせます。

   Repeat
      各セルのリピート数を指定します。最後に[Build]ボタンをクリックします。

      Number of Cell 1およびCell 2
         [a-axis]
            セル1またはセル2のa軸方向のリポート数を指定します。
         [b-axis]
            セル1またはセル2のb軸方向のリピート数を指定します。
         [c-axis]
            セル1またはセル2のc軸方向のリピート数を指定します。
         [Suggest]
            Cell 1とCell 2のサイズが近くなるようなリピート数の組み合わせを提示します。
            Ratioが1に近い組み合わせほど両セルの歪みが少なくなります。
            列をクリックしてSetボタンを押すか、ダブルクリックすると反映されます。
      Lattice Constrants
         [a],[b],[c],[Alpha],[Beta],[Gamma]
            接合後のセルの格子定数が表示されます。
      [Build]
         接合したセルを保存します。系のサイズが大きいと処理時間が長くなる場合があります。
