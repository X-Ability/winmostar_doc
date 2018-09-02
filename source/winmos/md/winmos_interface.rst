.. include:: ../../common.rst

.. _md_interface_top:

:menuselection:`MD --> 界面ビルダ` メニュー
============================================

   あらかじめ用意された二つのシミュレーションセルのファイル（mol2またはcif形式）を接合して界面モデルを作成します。

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
