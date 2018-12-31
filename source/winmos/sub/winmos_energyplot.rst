.. _energyplot_top:

Energy Plotウインドウ
============================================

   分子動力学計算の各種エネルギー、温度、圧力等の熱力学量の時間変化を表示します。
   
   ソルバによって出現するUIは異なります。
   
   :guilabel:`Energy Terms` で項目を選択し、 :guilabel:`Draw` ボタンをクリックするとグラフが表示されます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。
   
   Block Average
      :guilabel:`Size` で指定したサイズでブロック平均した値をプロットします。瞬時値の揺らぎが大きい物理量をプロットする際に有用です。
   Normalize by Nmol
      分子数でエネルギーを規格化します。分子数を取得するために、座標ファイルを選択します。
   Calc Ave
      各項目の平均値をテキストファイルで出力します。
      
      Gromacsの場合は、 :command:`gmx energy` を実行し、比熱、bulk modulusなどの揺らぎから求める物性も出力されます。
   Draw
      グラフを描画します。
      
      Gromacsの場合は、 :command:`gmx energy` を実行します。
   Close
      ウィンドウを閉じます。
      
