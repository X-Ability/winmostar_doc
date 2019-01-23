.. _animation_top:

Animationウィンドウ
============================================

   ウィンドウ左のリストには、各フレームのステップ数、エネルギー、力などを表示します。リストの各行をクリックするとその行に対応するフレームがメインウィンドウに表示されます。
   
   ウィンドウ下部では、リスト内の :guilabel:`Column` プルダウンメニューで選択した列の値がグラフ表示されます。
   
   アニメーション（トラジェクトリ）データについて本ウィンドウから直接結果解析することも可能で、詳細は :guilabel:`Tools` メニューを確認してください。

   Fileメニュー
      Realod
         アニメーションを再度元ファイルから読み込みます。
         
         :guilabel:`Reload` ボタンからも操作できます。
      Export GIF Animation
         GIFアニメーションファイルを書き出します。
         
         :guilabel:`Export...` ボタンからも操作できます。
      Export JPEG Images
         連番JPEGファイルを書き出します。
         
         :guilabel:`Export...` ボタンからも操作できます。
      Export Animated GRO File
         アニメーションgroファイルを出力します。VMD等との連携に使用できます          
         :guilabel:`Export...` ボタンからも操作できます。
      Close
         このウィンドウを閉じます。
         再度開く場合は :ref:`window_top` :menuselection:`--> Animation` を選択します。
         
         :guilabel:`Close` ボタンからも操作できます。
   Controlメニュー
      Go to First Frame
         最初のフレームに移動します。
         
         ウィンドウ内のボタンからも操作できます。
      Play/Pause
         アニメーションを再生/一時停止します。
         
         ウィンドウ内のボタンからも操作できます。
      Go to Last Frame
         最後のフレームに移動します。
         
         ウィンドウ内のボタンからも操作できます。
   Toolsメニュー
      Distance/Angle Change
         トラジェクトリ内の指定した原子間の結合長・結合角・二面角を解析します。
         
            1. :guilabel:`Bond/Angle Change` ウィンドウで、 :guilabel:`Type` を選択します。
            2. :guilabel:`Target Atoms` にコンマ区切りで計算したい結合長・結合角・二面角を定義する原子を列挙します。:guilabel:`Set` ボタンをクリックすると、メインウィンドウでマーカーが付いた原子を自動で入力することができます。
            3. :guilabel:`Plot` において時間変化（ :guilabel:`Time Change` ）またはヒストグラム（ :guilabel:`Histogram` ）のどちらを出力するか選択する。
            4. :guilabel:`Draw` ボタンをクリックします。
         
      Extract Trajectory for Selected Group
         メインウィンドウでグループ選択した原子のみを取り出したトラジェクトリファイルを作成します。
   上下スライダー
      ドラッグするとフレーム間を移動します。
   :guilabel:`Speed` スライダー
      再生速度を調整します。
   :guilabel:`Loop` チェックボックス
      チェックされている場合はループ再生されます。
   :guilabel:`Dynamics Bond` チェックボックス
      スナップショットごとに結合を毎回自動生成します。
      
      化学結合が組み変わるMD計算（第一原理MD、CPMD、ReaxFF、DCDFTBMDなど）の際に有用です。
   :guilabel:`Open Viewer` ボタン
      現在開いているアニメーションを :ref:`winmos3d_top` を用いて表示します。
   :guilabel:`Excel` ボタン
      リストの内容をcsv形式で出力し、Excelを起動して読み込みます。
