.. include:: ../../common.rst

.. _md_gromacs_top:

:menuselection:`MD --> Gromacs` メニュー
============================================

.. _md_gromacs_flow:

Gromacs計算の処理の流れ
----------------------------

   1) 計算したい分子をメインウインドウで作成しmol2形式で保存します。
   
   2) :ref:`md_solvate_buildcell` にてシミュレーションセルを作成します。
   
   3) :ref:`md_gromacs_keyword` にて計算条件を設定します。
   
      .. note::
         - 他の環境で作成したgro, topファイルを使用して計算を流す場合は、groファイルをメインウインドウで開き、topファイルを :ref:`md_gromacs_keyword` の :guilabel:`Force Field` で選択します。

   4) :ref:`md_gromacs_start` を選んでGromacs形式の座標（gro）ファイルとトポロジ（top）ファイルを保存すると、自動でgroファイルと同名のshファイルが生成し、そのshファイルが実行されます。トラジェクトリなどの出力ファイルは接尾辞が :file:`_gmx_tmp` の **作業ディレクトリ** に収められます。shファイルの全てのログは同名の outファイルに、MD計算（ :command:`gmx mdrun` ）のみのログは同名の logファイルに出力されます。
   
      .. include:: ../winmos_workingdir.rst
      
   5) 継続ジョブを実行する場合は、メインウインドウで開かれているgroファイルと同階層に作業ディレクトリが置かれている必要があります。
   
      .. note::
         - 継続ジョブでは、直前のジョブの作業ディレクトリの :file:`gmx_mdrun_tmp.gro` と :file:`gmx_tmp.top` を用いてジョブが開始されます。
   
   6) :ref:`md_gromacs_energy` 、 :ref:`md_gromacs_trajectory` など各種の結果処理機能を選択した時に、 :guilabel:`開く` ダイアログでデフォルトで選択されるファイルは、メインウインドウで開かれたファイルに紐づけられた作業ディレクトリの中のファイルとなります。
   
.. _md_gromacs_keyword:

キーワード設定
------------------------

   Gromacs計算用のキーワードを設定します。設定後 :guilabel:`OK` ボタンをクリックします。

   Extending Simulation
      :ref:`継続ジョブ <md_gromacs_flow>` を実行します。
   Preset
      計算条件のプリセットを指定します。プリセットの内容は、各キーワードから確認できます。
   # of Threads
      スレッド並列数を指定します。
   MPI (for Remote Job)
      MPI並列数を指定します。
      リモートジョブ投入で実行するときのみ反映されます。
   Basic
      Run Control
         dt
            数値積分における1ステップの時間刻みを指定します。
         nsteps
            計算するステップ数の最大値を指定します。
         integrator
            計算アルゴリズムを指定します。
      Velocity Generation
         gen-vel
            初速度を生成するか指定します。
         Fix random seed
            チェックを入れるとgen-seedを使用します。
         gen-seed
            初速度のrandom seedを指定します。
         Explicitly set gen-temp
            チェックを入れた場合はここで初速度の温度をしていします。入れない場合はref-tが初速度の温度となります。
      Temperature Coupling
         tcoupl
            温度制御のアルゴリズムを選択します。
         tc-grps
            温度制御対象のグループを指定します（スペース区切りで複数設定可）。
         ref-t
            設定温度を指定します（スペース区切りで複数設定可）。
         tau-t
            温度制御の時定数を指定します（スペース区切りで複数設定可）。
      Pressure Coupling
         pcoupl
            圧力制御のアルゴリズムを選択します。
         pcoupltype
            圧力制御におけるセルの動かし方を示します。
         ref-p
            設定圧力を指定します。
         tau-p
            圧力制御の時定数を指定します。
         compressibility
            系全体の圧縮率を指定します。
      Constraints
         constraints
            拘束条件を選択します。
   Advance
      Boundary Condition
         pbc
            周期境界条件を選択します。
      Energy Minimization
         emtol
            エネルギー最小化計算の収束条件であるforceの最大値を指定します。
         emstep
            エネルギー最小化計算における粒子を動かすステップ幅の初期値を指定します。
      Run Control
         comm-mode
            系全体の運動量の除去方法を指定します。
         nstcomm
            系全体の運動量を除去する頻度を指定します。
      Temperature/Pressure Coupling
         nh-chain-length
            Nose-Hoover法で温度制御した際のNose-Hoover chainの段数を指定します。
         nsttcouple
            温度制御の頻度を指定します。
         nstpcouple
            温度制御の頻度を指定します。
         refcoord-scaling
            温度制御時のposition restraintの基準座標のスケーリングについて指定します。
      Constraints
         constraint-algorithm
            拘束アルゴリズムを選択します。
         continuation
            親ジョブから拘束距離を引き継ぐか指定します。
         lincs-order
            LINCS法の次数を指定します。
         lincs-iter
            LINCS法における反復回数を指定します。
         shake-tol
            SHAKE法の収束判定に用いる打ち切り誤差パラメータを指定します。
      Misc.
         print-nose-hoover-chain-variables
            温度・圧力制御パラメータを子ジョブに引き継ぐ場合に指定します。
         define -DFLEXIBLE
            水分子をflexibleにする場合に選択します。
         define -DPOSRES
            特定分子の位置を拘束する場合に選択します。（posres.itpをincludeする）
   Output
      Output Control
         nstxout
            原子の座標を出力する頻度をステップ数で指定します。
         nstvout
            原子の速度を出力する頻度をステップ数で指定します。
         nstenergy
            エネルギーなどの系全体の統計量をedrファイル（エネルギーファイル）に出力する頻度をステップ数で指定します。
         nstxout-compressed
            ファイルサイズを節約できるxtc形式で原子の座標を出力する頻度をステップ数で指定します。
         compressed-x-grps
            xtc形式で出力するグループを指定します。デフォルトでは系全体が対象となります。
   Interaction
      Neighbor Searching
         nstlist
            neighbor listを更新する頻度を指定します。
         ns-type
            neighbor listを作成する方法を指定します。
         cutoff-shceme
            neighbor listに含める原子の選択方法を指定します。
         Use buffer-tolerance
            neighbor listのカットオフ距離を自動設定する際のパラメータである、二体ポテンシャルエネルギーの打ち切り誤差を指定します。
            チェックを外すとrlistの値がカットオフ距離として設定されます。
         rlist
            neighbor listのカットオフ距離を指定します。
      VdW
         vdwtype
            ファンデルワールスポテンシャルの計算手法を指定します。
         rvdw-switch
            ファンデルワールスポテンシャル計算にSwitchingを選択した際に、Switchingが始まる距離を指定します。
         rvdw
            ファンデルワールスポテンシャル計算のカットオフ距離を指定します。
         DispCorr
            カットオフに伴うエネルギーおよび圧力の長距離補正の有無を選択します。
         vdw-modifier
            ファンデルワールスポテンシャルのカットオフ時のSwitching/Shiftなどの設定を選択します。
      Electrostatics
         coulombtype
            クーロンポテンシャルの計算手法を指定します。
         rcoulomb-switch
            クーロンポテンシャル計算にSwitchingを選択した際に、Switchingが始まる距離を指定します。
         rcoulomb
            クーロンポテンシャル計算の実空間カットオフ距離を指定します。
         coulomb-modifier
            クーロンポテンシャルのカットオフ時のSwitching/Shiftなどの設定を選択します。
      Ewald
         Set # of grids for fourier space
            チェックを入れた場合はfourier-spacingを使用します。入れない場合はfourier-nx, ny, nzを使用します。
         fourier-spacing
            Ewald, PMEまたはPPPM法における波数空間のメッシュサイズを指定します。
         fourier-nx, ny, nz
            Ewald, PMEまたはPPPM法における波数空間のカットオフ距離またはメッシュ数（それぞれx, y, z成分）を指定します。
         pme-order
            PME法における外挿関数の次数を指定します。
         ewald-rtol
            Ewald, PMEまたはPPPM法の精度パラメータを指定します。
   Other
      Other Parameters
         その他の設定をmdpファイルの記述に基づき指定します。
   Automatic
      Rescale velocities to..
         NVEアンサンブルにおいて目標温度に系の温度を近づけたい時に使います。計算中の平均温度とここで入力した温度からスケーリング係数を算出して、最終構造の各粒子の速度をスケーリングします。
      Rescale box size to..
         NPTアンサンブルで計算した後に、設定圧力に近い状態でNVEまたはNVTアンサンブルで計算した場合に使用します。最終構造を、計算中の平均セルサイズにスケーリングします。
   Options
      Make a Backup of Working Directory
         :ref:`作業ディレクトリ <md_gromacs_flow>` のバックアップを行う際に選択します。
      Restore Working Directory
         継続ジョブが異常終了時など、:ref:`作業ディレクトリ <md_gromacs_flow>` を実行前の状態に戻す際にクリックします。
      maxwarn
         計算続行を許容するwarning message数の最大値を指定します（0:１つ以上のメッセージで中断）
      Verbose Output
         計算中のステップを表示させる際に指定します。
      Concatenate .edr and .trr files
         実行済の.edr ファイル及び.trrファイルとファイル結合する際にクリックします。
         ファイル結合はExtending Simulationの後処理として実行されます。
      Unwrap Atoms (trjconv -pbc nojump)
         計算結果の.gro ファイル及び.trrファイルを周期境界で折り返さない(unwrapped)座標で出力します。
      Enable Double Precision
         倍精度版のGromacsのバイナリでMD計算およびプリポスト処理を実行します。
   
   .. include:: winmos_gromacs_forcefield.rst
   
   Load
      Winmostar独自形式(gmxset)で保存された計算条件を読み込みます。
   Save
      Winmostar独自形式(gmxset)で計算条件を保存します。

.. _md_gromacs_start:

Gromacs実行
------------------------

   :ref:`md_gromacs_flow` の内容に基づきGromacsが実行されます。

GROファイル読み込み
---------------------------

   groファイルを開きます。本機能では、デフォルトで現在の作業ディレクトリ内の :file:`gmx_tmp_mdrun.gro` が選択され、メインウインドウのファイル名が変化しないため、終構造の確認に向いています。

.. _md_gromacs_trajectory:

トラジェクトリ読み込み
-----------------------------

   groとtrrファイルを選択し、MD計算のトラジェクトリをアニメーション表示します。
   メインウインドウのファイル名は変化しません。
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

outファイル編集
---------------------

   Gromacs実行時の全体の処理のログファイル（ :file:`\*.out` ）をテキストエディタで開きます。

logファイル編集(mdrun)
----------------------------

   :command:`gmx mdrun` のログファイル（ :file:`\*.log` ）をテキストエディタで開きます。

.. _md_gromacs_seq_setup:

連続ジョブ設定
---------------------

   Gromacsを連続実行するための設定を行います。プリセット以外の設定で実行したい場合は、あらかじめ実行したい計算条件を :ref:`md_gromacs_keyword` にて入力し :guilabel:`Save` ボタンでgmxset形式で保存してください。

連続ジョブ実行
-----------------------

   :ref:`md_gromacs_seq_setup` の内容に基づきGromacsを連続実行します。

.. _md_gromacs_energy:

エネルギー変化
---------------------

   Gromacsが出力したedrファイルを選択し、エネルギー、温度、圧力などの各種熱力学量のグラフを表示します。内部的には :command:`gmx energy` コマンドが実行されます。

.. _md_gromacs_rdf:

動径分布関数
----------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、動径分布関数を表示します。
   内部的には :command:`gmx rdf` コマンドが実行されます。
   動径分布関数は :guilabel:`Reference Group` と :guilabel:`Target Group` の間でを計算されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Definition
      Atom
         計算対象を原子座標にします。
      center of geometry
         計算対象を分子の幾何平均座標にします。
      center of mass
         計算対象を分子の重心位置にします。
   Output
      RDF
         動径分布関数を計算します。
      Cumulative Number RDF
         積算配位数を計算します。

   .. include:: winmos_gromacs_analysis_common2.rst

.. _md_gromacs_msd:

平均二乗変位
---------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、平均二乗変位と自己拡散係数を表示します。
   内部的には :command:`gmx msd` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Diffusion Constant
      :command:`gmx msd` コマンドを使用して時間-平均二乗変位のグラフの傾きから計算された自己拡散係数を表示します。

   .. include:: winmos_gromacs_analysis_common2.rst

.. _md_gromacs_saxs:

散乱関数
----------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、散乱関数を表示します。
   内部的には :command:`gmx saxs` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Interval
      散乱関数の計算に用いるスナップショットを取得する間隔を指定します。
      小さくしすぎると膨大な計算が必要となるため注意が必要です。

   .. include:: winmos_gromacs_analysis_common2.rst


速度相関/振動スペクトル
--------------------------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、速度相関関数および振動スペクトルを表示します。
   内部的には :command:`gmx velacc` コマンドが実行されます。
   
   .. include:: winmos_gromacs_analysis_common1.rst

   Velocity Autocorrelation
      速度相関関数を出力します。
   Vibration Spectrum
      振動スペクトルを出力します。

   .. include:: winmos_gromacs_analysis_common2.rst

比誘電率
---------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、比誘電率を表示します。
   内部的には :command:`gmx dipoles` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   .. include:: winmos_gromacs_analysis_common2.rst

粘度
----------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、粘度を表示します。
   内部的には :command:`gmx tcaf` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   .. include:: winmos_gromacs_analysis_common2.rst

密度分布
-----------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、密度分布を表示します。
   内部的には :command:`gmx density` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Group
      ここでチェックを入れた成分について密度分布が出力されます。

   .. include:: winmos_gromacs_analysis_common2.rst

.. _md_gromacs_hildebrand:

Hildebrand溶解度パラメータ
---------------------------------

   Gromacsが出力したedr, groファイルから、Hildebrand溶解度パラメータを算出します。気相と液相それぞれの計算結果が必要です。
   Hildebrand溶解度パラメータの算出に必要な凝集エネルギー、密度（比体積）、圧縮率の取得には、 :command:`gmx energy` コマンドが実行されます。

χ/DPDパラメータ
----------------------

   Gromacsが出力したedr, groファイルから、χパラメータ・DPD aijパラメータを算出します。2つの成分の気相と液相それぞれの計算結果が必要です。
   内部的には :ref:`md_gromacs_hildebrand` で計算した値を用います。

トラジェクトリを編集
----------------------------

   Gromacsが出力したtrrまたはxtcファイルのトラジェクトリデータについて、間引き、回転、空間分布関数の算出などの操作を行います。
   内部的には :command:`gmx trjconv` コマンドが実行されます。 :guilabel:`Execute` ボタンで処理を開始します。

   Output interval
      トラジェクトリを間引いて何フレームごとに出力するか指定します。
   Postprocess
      処理後の動作を指定します。 :guilabel:`Spatial distribution function` を選択した場合は :command:`gmx spatial` を使います。
   Target group
      出力するグループを指定します。
   Rotate and Trans
      :guilabel:`Reference group` で指定したグループが固定されるよう:guilabel:`Target group` で指定したグループを回転・並進移動させます。
   Reference group
      :guilabel:`Roate and Trans` におけるrefernceを指定します。
   Group for SDF
      :guilabel:`Postprocess` にて :guilabel:`Spatial distribution function` (SDF)を選択した際に計算されるSDFをどのグループに対し計算するか指定します。

RMSD
-----------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、RMSD（主にタンパク向け）を表示します。
   内部的には :command:`gmx rms` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Group
      ここでチェックを入れた成分について結果が出力されます。通常は :guilabel:`Backbone` を選択します。

   .. include:: winmos_gromacs_analysis_common2.rst

回転半径
------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、回転半径（主にタンパク向け）を表示します。
   内部的には :command:`gmx gyrate` コマンドが実行されます。

   .. include:: winmos_gromacs_analysis_common1.rst

   Group
      ここでチェックを入れた成分について結果が出力されます。通常はBackboneを選択します。

   .. include:: winmos_gromacs_analysis_common2.rst

Ramachandoranプロット
---------------------------

   Gromacsが出力したtrr, tpr, ndxファイルを選択し、各アミノ酸残基のRamachandoranプロットを表示します。
   内部的には :command:`gmx rama` コマンドが実行されます。

.. _md_gromacs_er_start:

ER法実行
-------------

   エネルギー表示(ER)法を使用して溶媒和自由エネルギーを計算します。

   1. 事前に以下3つ系の計算をGromacsで実行し、それぞれの作業ディレクトリを残しておきます。エネルギー最小化などの平衡化を終えた後の、平衡状態のデータのみ使用します。

      A. Solution system（溶質分子1個＋溶媒分子多数）
      B. Solvent system（溶媒分子多数）
      C. Solute system（溶質分子1個）
   2. :guilabel:`ERmod実行` タブを選択します。
   3. :guilabel:`Solution` タブでA. Solution systemの作業ディレクトリをドラッグアンドドロップします。または、xtc, log, topファイルそれぞれの欄で :guilabel:`...` ボタンを押して個々のファイルを読み込みます。
   4. 同様に :guilabel:`Solvent` タブでB. Solvent systemのファイルを選択します。
   5. 同様に :guilabel:`Solute` タブでC. Solute systemのファイルを選択します。xtcファイルを指定した場合は、溶質がフレキシブルモデル、pdbまたはgroファイルを指定した場合は、剛体モデルとして扱われます。
   6. 必要に応じて、 :guilabel:`Options` ボタンから自由エネルギー計算時のMPI並列数など指定します。
   7. 自由エネルギー計算をローカル環境で実施する場合は :guilabel:`Start` ボタンを押します。結果を出力するフォルダを指定すると計算が始まります。Cygwin上で :command:`ermod` が流れます。
   8. リモート環境で実施する場合は一旦 :guilabel:`Close` ボタンを押します。そして :ref:`md_remote` にて :guilabel:`Program` に ``ermod`` を指定し実行します。リモートサーバ上では、 :command:`ermod` および :command:`slvfe` コマンドに :command:`$PATH` が通っている必要があります。（リモートサーバへのERmodのインストールは `こちら <https://winmostar.com/jp/gmx4wm_jp_linux.html>`_ を参照）計算が終わり、 :ref:`remote_top` で :guilabel:`get` ボタンを押すと、 :file:`winmostar.exe` が置かれたフォルダ以下に :file:`ermod_remote_\*` というフォルダが生成され、結果がリモートサーバから転送されます。
   9. 自由エネルギー計算終了後、結果の表示するには :ref:`md_gromacs_er_result` メニューを選択します。

.. _md_gromacs_er_result:

ER法結果読み込み
-------------------

   :ref:`md_gromacs_er_start` にて処理した結果を表示します。選択後、 :ref:`md_gromacs_er_start` にて指定した出力先フォルダを指定してください。 :guilabel:`Unit` にてエネルギーを表示する際の単位を指定できます。 :guilabel:`Log` ボタンを押すと、ERmodのログファイルを表示します。

.. _md_gromacs_bar_start:

BAR法実行
--------------

   Bennett Acceptance Ratio(BAR)法を使用して溶媒和自由エネルギーを計算します。

   1. Gromacsを用いて溶液系（溶質分子1個＋溶媒分子多数）の計算を実施します。平衡化の各ステップおよび平衡状態の計算の全ての作業ディレクトリを残しておきます。
   2. :ref:`md_gromacs_bar_start` を選択します。
   3. :guilabel:`Integration Path` タブにて、溶質が溶媒と相互作用していない状態（λ=0）から相互作用している状態（λ=1, Full Coupling）をどのような経路で積分するか指定します。 :guilabel:`Insert` ボタン左の2つの欄にファンデルワールスポテンシャルのカップリング係数（左）とクーロンポテンシャルのカップリング係数（右）を入力し :guilabel:`Insert` を押すと、積分経路が追加されます。 :guilabel:`Delete` を押すことで、積分経路を削除できます。
   4.  :guilabel:`Procedure` タブにて、積分経路上の各状態のシミュレーション手順を指定します。あらかじめ用意した溶液系（λ=1）の平衡化の手順を、フォルダ単位で指定します。 :guilabel:`Add` ボタンまたはリストへのドラッグアンドドロップで、フォルダを追加します。 :guilabel:`Delete` ボタンでフォルダを削除します。リストの最後の手順で実施された計算が、自由エネルギー計算に用いられます。
   5. :guilabel:`Start` を押すと、各λのMD計算が実行されます。
   6. 各λのMD計算の終了後、結果の表示するには :ref:`md_gromacs_bar_result` を選択します。

.. _md_gromacs_bar_result:

BAR法結果読み込み
--------------------------

    :ref:`md_gromacs_bar_start` にて処理した結果を表示します。メニュー選択後、:ref:`md_gromacs_bar_start` にて指定した出力先フォルダを指定してください。バックグラウンドで :command:`gmx bar` が実行され、結果が表示されます。 :guilabel:`Unit` にてエネルギーを表示する際の単位を指定できます。 :guilabel:`Log` ボタンを押すと、 :command:`gmx bar` のログファイルが表示されます。表示されるグラフは、溶質が溶媒と相互作用していない状態（λ=0）から相互作用している状態（λ=1）の間で自由エネルギーが変化する様子を示しています。

