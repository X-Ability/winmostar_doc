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
      Export Current Frame
         現在のフレームを別名で保存します。
      Export All Frames Separately
         全てのフレームをそれぞれ個別のファイルに出力します。
         
         例えば、SDFファイルの各分子構造を個々のファイルに分割し保存・編集したいときに便利です。
         分割したファイルを再びSDFファイルに集約する場合は :ref:`tools_composesdf` を使います。
      Export GIF Animation
         GIFアニメーションファイルを書き出します。
         
         :guilabel:`Export` ボタンからも操作できます。
      Export JPEG Images
         連番JPEGファイルを書き出します。
         
         :guilabel:`Export` ボタンからも操作できます。
      Export SDF File
         全てのフレームを含むSDFファイルを書き出します。
      Export Animated GRO File
         アニメーションgroファイルを出力します。VMD等との連携に使用できます          
         :guilabel:`Export` ボタンからも操作できます。
      Export CSV File
         リストの表示されている数字をcsv形式で出力します。
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
      Invert Trajectory
         トラジェクトリを反転させます。順方向、逆方向のIRC計算のトラジェクトリを、鞍点を中心に結合させたいときに便利な機能です。
      Skip Frames
         トラジェクトリを一定間隔で間引きます。長大なトラジェクトリのサイズを小さくして解析の処理速度を軽くしたい場合などに便利な機能です。
      Translate All Atoms
         全てのフレームの全ての原子を並進移動させます。計算済みのデータを可視化する際、原子位置を微調整したい時に便利な機能です。
      Set Origin as Lower Bound Edge of Cell
         各フレームのシミュレーションセルの各方向の始点を、原点に設定します。 :guilabel:`Translate All Atoms` 機能と組み合わせて使用すると便利な機能です。
      Distance/Angle Change
         トラジェクトリ内の指定した原子間の結合長・結合角・二面角を解析します。
         
            1. :guilabel:`Bond/Angle Change` ウィンドウで、 :guilabel:`Type` を選択します。
            2. :guilabel:`Target Atoms` にコンマ区切りで計算したい結合長・結合角・二面角を定義する原子を列挙します。:guilabel:`Set` ボタンをクリックすると、メインウィンドウでマーカーが付いた原子を自動で入力することができます。
            3. :guilabel:`Plot` において時間変化（ :guilabel:`Time Change` ）またはヒストグラム（ :guilabel:`Histogram` ）のどちらを出力するか選択する。
            4. :guilabel:`Draw` ボタンをクリックします。
         
      Mean Square Displacement/Diffusion Constant
         平均二乗変位および自己拡散係数を算出します。詳細は :ref:`md_gromacs_msd` を参照してください。Gromacsなど一部のソルバでは本メニューが有効になりませんが、ソルバのメニューに同等機能が用意されている場合があります。
      Radial Distribution Function
         動径分布関数を算出します。詳細は :ref:`md_gromacs_rdf` を参照してください。Gromacsなど一部のソルバでは本メニューが有効になりませんが、ソルバのメニューに同等機能が用意されている場合があります。
      Extract Trajectory for Selected Group
         メインウィンドウでグループ選択した原子のみを取り出したトラジェクトリファイルを作成します。
   Automationメニュー
      :menuselection:`File --> Export All Frames Separately` などのファイル出力機能の実行時に、各フレームの構造に対し操作を行います。操作はメニューの順に実行されます。
      
      Check All/Uncheck All
         :guilabel:`Deleting Hydrogen` から :guilabel:`Quick Optimization` までの全ての項目のチェックします/チェックを外します。
      Deleting Hydrogen
         各フレームの構造に対し、水素原子を削除します。 :ref:`edit_delh` と同じ操作が実行されます。
      Extracting One Molecule
         各フレームの構造に対し、1分子だけ構造を残します。
      Adjusting Coordinate
         各フレームの構造に対し、結合長を自動で調整します。 :ref:`edit_auto_bondlength` と同じ操作が実行されます。
      Adding Hydrogen
         各フレームの構造に対し、水素を自動で付加します。 :ref:`edit_addh_all` と同じ操作が実行されます。
      Quick Optimization
         各フレームの構造に対し、簡易構造最適化を実行します。 :ref:`edit_clean` と同じ操作が実行されます。
      Running MOPAC
         各フレームの構造に対し、MOPACを実行します。
   上下スライダー
      ドラッグするとフレーム間を移動します。
   :guilabel:`Speed` スライダー
      再生速度を調整します。
   :guilabel:`Loop` チェックボックス
      チェックされている場合はループ再生されます。
   :guilabel:`Dynamic Bond` チェックボックス
      スナップショットごとに結合を毎回自動生成します。
      
      化学結合が組み変わるMD計算（第一原理MD、CPMD、ReaxFF、DCDFTBMDなど）の際に有用です。
   :guilabel:`Open Viewer` ボタン
      現在開いているアニメーションを :ref:`winmos3d_top` を用いて表示します。
   :guilabel:`Export` ボタン
      :guilabel:`File` メニュー以下の機能のショートカットです。
   :guilabel:`Close` ボタン
      このウィンドウを閉じます。
   :guilabel:`Plot Column`
      リストの中で、このウィンドウ下部のグラフ表示部に表示する列を指定します。直接値を入力することも可能です。
   :guilabel:`Custom Plot` ボタン
      リストの内容、原子間距離、角度、格子定数などを柔軟にプロットできるウィンドウを開きます。
