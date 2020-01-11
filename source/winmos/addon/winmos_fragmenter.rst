   
Frangment ER
===============
   Fragment ER法を使用してタンパク-リガンド間の相対結合自由エネルギーを計算します。
   
   使用するためにはアドオンの購入が必要です。
   
   分子動力学法のソルバーにはNAMDを使います。

Fragment ER画面
----------------------------

Fileメニュー
   New Project
      プロジェクトを初期化します。
   Open Project
      プロジェクトを開きます。
   Save Project
      プロジェクトを上書き保存します。
   Save Project As
      プロジェクトを名前をつけて保存します。
   Close
      Fragment ER画面を閉じます。
MDメニュー
   NAMD Keywords Setup
      :ref:`fer_namdkeyword` を開きます。
   Run NAMD
      NAMDをローカル実行します。
   Run NAMD On Remote Server
      NAMDのリモートサーバでの実行のために、リモートジョブ実行画面を開きます。
   Edit .log File
         NAMD実行時のログファイルをテキストエディタで開きます。
   Energy Plot
      NAMD実行時のログファイルからエネルギー変化のグラフを描画します。
   Import NAMD Trajectory
      MDのトラジェクトリを開きます。
   Clear NAMD Output Files
      NAMD実行でできた出力ファイルを削除します。
      RunNAMD.bat, RunNAMD.log, 各種dcd, log, coor, namd, vel, xsc, xstファイル等を削除します。
Analysisメニュー
   Calculate Free Energy
      自由エネルギーを計算します。
   Edit .log File
      自由エネルギー計算時のログファイルをテキストエディタで開きます。
   Import Result
         自由エネルギー計算結果をインポートして :ref:`fer_summary` に表示します。
   Clear Analysis Output Files
      自由エネルギー計算でできた出力ファイルを削除します。
      FreeEnergy.sh, FreeEnergy.log, calc_PdP_kai2.out, parameters_feファイル, refs, solnフォルダ等を削除します。
Toolsメニュー
   Preferences
      :ref:`fer_pref` を表示します。

Solution
   :guilabel:`...` ボタンをクリックして溶液系のPDBファイルを指定します。
   複数のリガンド分子が存在する場合は、リガンド分子を指定します。
   ビューにリガンド分子表示されます。

Set Core
   初期リガンドからフラグメント部分の原子をクリックで指定し、:guilabel:`Set Core` ボタンをクリックすると、残りの部分を母核として設定します。

Add
   新規フラグメントをコンボボックスで選択してから、 :guilabel:`Add` ボタンをクリックすると、新規フラグメントを母核に付加したリガンドを最終リガンドリストに追加します。

Configure
   :ref:`fer_configuration` を表示します。
Check
   各種リガンドの母核部分の原子タイプが一致しているかチェックします。
   同時にリガンドの力場も生成します。
Setup
   NAMDの入力ファイル(PDB,PSFファイル)を生成します。
Close
   Fragment ER画面を閉じます。

.. _fer_configuration:

Fragment ER 設定画面
----------------------------

   Fragment ERの計算の設定をします。
   設定内容はプロジェクトファイルに記録されます。

Solvation
   Drop water and solvate for In-protein
      In-protein系の計算で水分子を再配置するか設定します。
      これを行わない場合ははじめに読み込んだ溶液系の水分子が溶媒として使用されます。
      これを行わない場合は周期境界セルが設定されている必要があります。
   Drop water and solvate for In-aqua
      In-aqua系の計算で水分子を再配置するか設定します。
      これを行わない場合ははじめに読み込んだ溶液系の水分子が溶媒として使用されます。
      これを行わない場合は周期境界セルが設定されている必要があります。
   Distance from solute to cell boundary
      溶質から周期境界セルまでの距離を指定します。
Forcefield for Ligands
   リガンドに使用する力場の種類を選択します。
N-terminal modification
   タンパクのN末端修飾を指定します。
C-terminal modification
   タンパクのC末端修飾を指定します。
Import trajectory Interval
   トラジェクトリのインポート時にどのくらいの頻度で間引くか指定します。
ERmod
   # of bins for binding energy
      結合エネルギーの分割数を指定します。
   # of insersions for solute (maxins)
      ermod実行時のmaxinsを指定します。
   # of division of the simulation (engdiv)
      ermod実行時のengdivを指定します。
   # of OpenMP threads (for local run)
      ermodローカル実行時のOpenMPスレッド数を指定します。
   # of MPI processes (for remote run)
      ermodリモート実行時のMPIプロセス数を指定します。
OK
   設定を保存して画面を閉じます。
Cancel
   設定を保存せず画面を閉じます。

.. _fer_namdkeyword:

NAMDキーワード設定画面
----------------------------

   NAMDによるMD計算の設定をします。
   設定内容はプロジェクトファイルに記録されます。
   チェックボックスで計算する系を選択します。

Conf
   各系のNAMD計算に入力ファイルの設定をします。
   
   numdcd
      トラジェクトリの出力間隔を指定します。
   numlog
      ログファイルの出力間隔を指定します。
   temperature
      温度を指定します。
      In-proteinの平衡化計算では段階昇温のはじめの段階の温度になります。
   timestep
      MDの1ステップの時間刻みを指定します。
   numstep
      MDのステップ数を指定します。
Number of Therad
   NAMD実行時のスレッド数を指定します。
Generate Conf Files
   入力ファイル(namdファイル)を出力します。
Run
   入力ファイルを出力してNAMDをローカル実行します。
Close
   NAMDキーワード設定画面を閉じます。
Load Default
   デフォルト設定条件を読み込みます。
Save Default
   現在の設定条件をデフォルト設定として保存します。
Reset Default
   デフォルト設定条件を初期状態に戻します。

.. _fer_summary:

結果表示画面
----------------
   Summaryに結果の要約が表示されます。
   エネルギー分布関数のグラフが表示されます。
   どの系を表示するか選択することができます。

log
   ログファイルをテキストエディタで開きます。
Excel
   グラフ表示されているデータをCSVファイルに保存し、アプリケーションで開きます。
Close
   結果表示画面を閉じます。


.. _fer_pref:

環境設定画面
---------------

NAMD Path
   NAMD実行ファイルのパスを設定します。
Protein Topology Path
   タンパクのトポロジーファイルを指定します。
Protein parameter Path
   タンパクのパラメータファイルを指定します。


