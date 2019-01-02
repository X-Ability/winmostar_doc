.. include:: ../../common.rst

.. _md_lammps_top:

:menuselection:`MD --> LAMMPS` メニュー
============================================
   
   LAMMPSに関するメニューです。
   
   LAMMPSをインストールする方法は :ref:`install_install` に記載しています。

.. _md_lammps_keyword:

キーワード設定
------------------------

   LAMMPSの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウインドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`md_lammps_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save` ボタンでForce Fieldを除く設定を保存します。
   :guilabel:`Load` ボタンで :guilabel:`Save` にて保存した設定を読み込みます。
   
   Extending Simulation
      継続ジョブを実行します。
      
      詳細は :ref:`md_lammps_start` を参照してください。
   Preset
      計算条件のプリセットを指定します。プリセットの内容は、各キーワードから確認できます。
   MPI
      MPI並列数を指定します。
   Basic
      Units
         単位系を指定します。
         
         real
            主に分子系で指定します(A, fs, Kcal/mol）。
         metal
            主に結晶系で指定します(A, ps, eV）。
         lj
            主にDPD計算で指定します(無次元単位）。
      Atom Style
         計算する系の種類を指定します。 :guilabel:`Units` に応じて変化します。
      Pair Style
         相互作用計算の方法を選択します。
      Potential File
         ポテンシャルファイルを選択します。LAMMPS本体をインストールしたフォルダ直下の :file:`Potential` フォルダ内のファイルをリストアップします。選択肢は :guilabel:`Pair Style` に応じて変わります。
      Time Step
         時間積分の刻み幅を指定します。単位は選択した :guilabel:`Unit` により変わります。
      # of Time Steps
         時間積分ステップの最大数を指定します。
      Generate Velocity
         チェックをした場合は初速度が与えられます。
      Ensemble
         時間積分の種類を指定します。 ``nvt`` （温度一定のカノニカルアンサンブル）,  ``npt`` （温度、圧力一定のアンサンブル）,  ``nve`` （体積とエネルギー一定のミクロカノニカルアンサンブル）,  ``minimize`` （CG法によるエネルギー最小化）のいずれかを選択します。
      Temperature
         目標温度を指定します。アニーリング計算時には始状態の温度を指定します。
      Pressure
         目標圧力を指定します。
      Pressure Control
         圧力制御の際のセルの動かし方を指定します。
      Constrain Hydrogen
         水素原子をSHAKE法で拘束します。
   Advance
      Boundary X Y Z
         周期境界条件を指定します。 ``p`` （periodic）, ``f`` （non-periodic and fixed）, ``s`` （non-periodic and shrink-wrapped）,  ``m`` （non-periodic and shrink-wrapped with a minimum value）のいずれかを選択します。
      Energy Tolerance
         minimize計算時のエネルギーに関する打ち切り誤差を指定します。
      Force Tolerance
         minimize計算時の力に関する打ち切り誤差を指定します。
      Tdamp
         温度制御の時定数パラメータを指定します。
      Pdamp
         圧力制御の時定数パラメータを指定します。
      Reset COM Motion
         MD計算時に系全体の重心の運動を凍結する方法を選びます。
      Reset Interval
          :guilabel:`Reset COM Motion` の頻度をタイムステップで指定します
      Random Seed
         初速度発生時の擬似乱数の種を指定します。
      Tchain
         Nose-Hoover chainの段数を指定します。
      Pchain
         圧力制御の段数を指定します。
      box tilt large
         シミュレーションセルの変形の許容度合を指定します。
      rigid
         分子を剛体として扱います。
      SHAKE tolerance
         SHAKE法の打ち切り誤差を指定します。
   Output
      Dump Interval (dump)
         dump形式で座標を出力する頻度をタイムステップ数で指定します。
      Dump Interval (xtc)
         xtc形式で座標を出力する頻度をタイムステップ数で指定します。
      Dump Interval (xyz)
         xyz形式で座標を出力する頻度をタイムステップ数で指定します。
      Log Interval
         log ファイルにエネルギー変数を書き出す頻度をタイムステップ数で指定します。
      Calculate Thermal Conductivity
         原子の流速の自己相関関数から算出する熱伝導率を出力します。
      Calc Interval
         熱伝導率計算における自己相関関数の算出頻度を指定します。
      ACF Length
         熱伝導率計算における自己相関関数の長さを指定します。
   Interaction
      Cutoff(vdw)
         vdw(LJ)ポテンシャルのカットオフ半径を指定します。
      Cutoff(Coulomb)
         Coulomb(静電)ポテンシャルのカットオフ半径を指定します。
      Neighbor Search
         近接粒子探索時のアルゴリズムを指定します。
      Neighbor Skin
         近接粒子探索時の探索半径の余分を指定します。
      Automatically set Nmesh
         :guilabel:`Pair Style` = ``lj/cut/coul/long`` の際に使用されるPPPM法のメッシュ数をK-space accuracyから自動的に設定します。
      Nmesh for kx, ky, kz
         PPPM法のメッシュ数を指定します。
      PPPM Order
         PPPM法のSpline補間次数を指定します。
      K-space accuracy
         PPPM法の許容相対誤差を指定します。
      Enable Long Range Correction
         vdwポテンシャルのカットオフ補正項の有無を指定します。
   Non-equiliibrium (1)
      Enable Elongation
         伸長計算を有効にします。 :guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Affine Transformation
         伸長計算時に原子位置をシミュレーションセルに合わせてアフィン（相似）変形するか指定します。
      Eng. Strain Rate
         伸長計算時の伸長速度を工業ひずみで指定します。 :guilabel:`Max Eng. Strain` には最終ステップにおけるひずみの予測値が表示されます。
      Preserve Volume
         伸長計算時に、シミュレーションセルの体積を一定に保つよう伸長方向に垂直な方向のセルサイズを変形させます。
      Enable Simulated Annealing
         アニーリング計算（温度を一定速度で変化させる計算）を有効にします。 :guilabel:`Ensemble` が ``nvt`` , ``npt`` の時に指定できます。 :guilabel:`Temperature` の値が始状態の温度、 :guilabel:`Final Temperature` の値が終状態の温度となります。
      Final Temperature
         アニーリング計算時の終状態の温度を指定します。
      Annealing Rate
         アニーリング計算時の加熱または冷却速度が表示されます。
      Enable Pulling
         指定した原子群を一定速度で移動させるPull計算を有効にします。 :guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Pulled Atoms
         Pull計算時に、 :ref:`グループ選択 <edit_top>` でPullしたい原子（複数可）を選択した上で :guilabel:`Set` ボタンをクリックすると、その原子がPullのターゲットとなります。
      Pulled Velocity
         Pull計算時の、Pull速度を指定します。
   Restraint
      Enable Restraint
         指定した2原子間の距離を拘束した計算を実施します。:guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Restrained Atoms
         拘束計算時に、2原子を :ref:`グループ選択 <edit_top>` し :guilabel:`Set` ボタンをクリックすると、その原子が拘束のターゲットとなります。
      Bond Length
         拘束計算時の、2原子間の拘束距離を指定します。
      Initial Strength
         拘束計算時の、始状態における拘束ポテンシャルのバネ係数を指定します。
      Final Strength
         拘束計算時の、終状態における拘束ポテンシャルのバネ係数を指定します。
      Enable Position Restraint
         指定した原子の絶対座標を固定した計算を実施します。
      Restrained Atoms
         絶対座標を固定する原子を指定します。
   Automatic
      Rescale velocities to..
         NVEアンサンブルにおいて目標温度に系の温度を近づけたい時に使います。計算中の平均温度とここで入力した温度からスケーリング係数を算出して、最終構造の各粒子の速度をスケーリングします。
      Rescale box size to..
         NPTアンサンブルで計算した後に、設定圧力に近い状態でNVEまたはNVTアンサンブルで計算した場合に使用します。最終構造を、計算中の平均セルサイズにスケーリングします。
   Options
      Make a Backup of Working Directory
         作業ディレクトリのバックアップを行う際に選択します。
      Restore Working Directory
         継続ジョブが異常終了時など、作業ディレクトリを実行前の状態に戻す際にクリックします。
      Dump all files for remote
         Linux環境でのジョブ実行に必要なファイルを出力します。 :ref:`remote_top` 機能で生成されるファイルと同じファイルが出力されます。

   .. include:: winmos_gromacs_forcefield.rst

.. _md_lammps_start:

LAMMPS実行
------------------------------

   LAMMPSを実行します。
   状況に応じて実行方法が異なります。

      - （デフォルト） :guilabel:`Extending Simulation` にチェックがなく、 :menuselection:`Force Fieldタブ -->` :guilabel:`Generate parameters` にチェックが入っている場合
         dataファイル（座標とトポロジを含むファイル）を新規に生成してからジョブを開始します。
      - :guilabel:`Extending Simulation` にチェックがなく、 :menuselection:`Force Fieldタブ -->` :guilabel:`Use parameters in displayed file` にチェックが入っている場合
         メインウインドウで開かれているdataファイルを使用してジョブを開始します。
      - :guilabel:`Extending Simulation` にチェックがある場合
         メインウインドウで開かれているdataファイルに紐づけられた作業ディレクトリの中にある :file:`lmp_tmp_final.data` 用いてジョブを開始します。

   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.data` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | outファイル
             | :file:`water.log`
           - LAMMPSのログファイルです。
         * - | batファイル
             | :file:`water.bat`
           - | LAMMPSとそのプリ・ポスト処理を実行するための
             | バッチファイルです。
         * - | 作業ディレクトリ
             | :file:`water_lmp_tmp\\`
           - | 作業ディレクトリです。
           
   作業ディレクトリには以下のファイルが生成されます。
   ここでは主要なファイルのみ示しています。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1
         
         * - 種類
           - 説明
         * - | :file:`lmp_tmp.data`
           - | read_dataで指定される計算の初期状態のファイルです。
         * - | :file:`lmp_tmp.in`
           - | 計算条件を指定するファイルです。
         * - | :file:`lmp_tmp.log`
           - | ログファイルです。
             | :file:`water.log` と同じものです。
         * - | :file:`lmp_tmp.dump`
           - | dump形式のトラジェクトリファイルです。
         * - | :file:`lmp_tmp.restart`
           - | 最終状態の情報を含むrestartファイルです。
         * - | :file:`lmp_tmp_final.data`
           - | 最終状態の情報を含むdataファイルです。
             | restartファイルから生成されます。
         * - | :file:`postproc.sh`
           - | LAMMPSが生成する :file:`lmp_tmp_final.data` が、
             | そのままではLAMMPSの実行には不十分なため、
             | 不十分な情報を補うための処理を行うスクリプトです。
         * - | :file:`lmp_tmp.xtc`
           - | 結果処理にGromacsツールを使用するための、
             | xtc形式のトラジェクトリファイルです。
         * - | :file:`lmp_tmp.xtc`
           - | 結果処理にGromacsツールを使用するための、
             | xtc形式のトラジェクトリファイルです。
         * - | :file:`lmp_tmp.gro`
           - | 結果処理にGromacsツールを使用するための、
             | gro形式の座標ファイルです。
             | 入力ファイルとして指定されたdataファイルから変換して
             | 作成されます。

      .. include:: ../winmos_workingdir.rst

.. _md_lammps_trajectory:

アニメーション
-----------------------------

   dataファイルとdumpファイルを選択し、MD計算のトラジェクトリをアニメーション表示します。
   
   メインウインドウのファイル名は変化しません。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
.. _md_lammps_energy:

エネルギー変化
------------------------------

   ログファイルを選択し、エネルギー、温度、圧力などの各種熱力学量のグラフを表示します。thermo_styleで指定した値をプロットすることができます。
   
   サブウインドウの操作方法は :ref:`energyplot_top` を参照してください。

最終構造を読み込み
---------------------------

   :file:`\*_lmp_tmp\\lmp_tmp_final.gro` を開きます。
   
   本機能を使うとメインウインドウのファイル名は変化しません。


動径分布関数
------------------------------

   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、動径分布関数を表示します。
   
   詳細は :ref:`md_gromacs_rdf` を参照してください。

平均二乗変位
------------------------------
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、平均二乗変位と自己拡散係数を表示します。
   
   詳細は :ref:`md_gromacs_msd` を参照してください。

散乱関数
------------------------------
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、散乱関数を表示します。
   
   詳細は :ref:`md_gromacs_saxs` を参照してください。
   
散逸粒子動力学
------------------------

DPDセルビルダ
^^^^^^^^^^^^^^^^

   散逸粒子動力学用のシミュレーションセルを作成します。

   Monomers Available
      ポリマー鎖を構成するモノマー（粒子）を選択します。

   # of Monomers
      選択したモノマーの数を指定します。
   >> Add >>
      選択したモノマーを追加します。
   Branch
      Start
         分岐開始位置を指定します。
      End
         分岐終了位置を指定します。
   Monomers Used
      追加したモノマー種と数がリスト表示されます。
   Clear
      リストアップされたモノマー種を全て削除します。
   << Delete <<
      追加したモノマーを削除します。
   # of Polymers
      ポリマー鎖の数を指定します。
   >> Add >>
      リストアップされたポリマー鎖を計算対象に追加します。
   Polymers Used
      追加したポリマー鎖の構成と本数がリスト表示されます。
   << Delete <<
      追加したポリマー鎖を削除します。
   Density
      系の密度（無次元）を指定します。
   Build
      シミュレーションセルを構築します。
   Reset
      すべての設定をデフォルトに戻します。
   Close
      ウインドウを閉じます。

ポテンシャル編集
^^^^^^^^^^^^^^^^^

   Winmostar独自形式の散逸粒子動力学用のポテンシャルファイルを作成・編集します。
   
   Potential Files
      散逸粒子動力学に用いるポテンシャルファイルを選択します。
   New
      新たにポテンシャルファイルを作成します。
   Delete
      選択したポテンシャルファイルを削除します。
   Massタブ
      Species
         モノマー（粒子）名が表示されます。
      Mass
         質量（無次元）を設定します。
   Bondタブ
      R_0
         結合（ボンド）ポテンシャルパラメータR_0（平衡距離、無次元）を設定します。
      K
         結合（ボンド）ポテンシャルパラメータK（バネ定数、無次元）を設定します。
   Nonbondタブ
      Aij
         非結合ポテンシャルパラメータAij（無次元）を入力します。
      Rcut
         非結合ポテンシャルパラメータRcut（カットオフ半径、無次元）を入力します。
      Set
         設定したポテンシャルパラメータがリストに反映されます。
   OK
      設定したポテンシャルパラメ-タをポテンシャルファイルに保存してウインドウを閉じます。
   Close
      設定内容を破棄してウインドウを閉じます。
