.. include:: ../../common.rst

.. _md_lammps_top:

:menuselection:`MD --> LAMMPS` メニュー
============================================
   
   LAMMPSに関するメニューです。
   
   LAMMPSをインストールする方法は :ref:`install_install` に記載しています。

.. _md_lammps_forcefield:

力場を割り当て
------------------------

.. include:: winmos_gromacs_forcefield.rst

.. _md_lammps_keyword:

キーワード設定
------------------------

   LAMMPSの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`md_lammps_start` を参照してください。
   
   電荷が割り当てられていない分子がある場合は、 :ref:`md_charge_auto` が自動で立ち上がります。
   力場が割り当てられていない場合は、 :ref:`md_lammps_forcefield` が自動で立ち上がります。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save` ボタンでForce Fieldを除く設定を保存します。
   :guilabel:`Load` ボタンで :guilabel:`Save` にて保存した設定を読み込みます。
   
   Extending Simulation
      継続ジョブを実行します。
      
      詳細は :ref:`md_lammps_start` を参照してください。
   Preset
      計算条件のプリセットを指定します。各プリセットは以下のキーワードを変更します。
      
      .. list-table::
         :header-rows: 1
         
         * - 
           - | Minimize
             | (fast)
           - | NVT
             | (fast)
           - | NPT
             | (fast)
           - | NVE
             | (fast)
         * - Pair style
           - lj/cut/coul/long
           - lj/cut/coul/long
           - lj/cut/coul/long
           - lj/cut/coul/long
         * - Time step
           - 
           - 2.0
           - 2.0
           - 2.0
         * - # of time steps
           - 5000
           - 5000
           - 5000
           - 5000
         * - Ensemble
           - minimize
           - nvt
           - npt
           - nve
         * - | Generate 
             | initial velocity
           - 
           - True
           - False
           - False
         * - Temperature
           - 
           - 300
           - 300
           - 
         * - Pressure
           - 
           - 
           - 1.0
           - 
         * - Boundary Condition
           - p p p
           - p p p
           - p p p
           - p p p
         * - Reset COM motion
           - linear
           - linear
           - linear
           - linear
         * - Tchain
           - 
           - 3
           - 3
           - 
         * - Pchain
           - 
           - 
           - 3
           - 
         * - Shake tolerance
           - 
           - 1e-5
           - 1e-5
           - 1e-5
         * - | Dump interval
             | (dump)
           - 100
           - 100
           - 100
           - 100
         * - | Dump interval
             | (xtc)
           - 100
           - 100
           - 100
           - 100
         * - Log interval
           - 10
           - 10
           - 10
           - 10
         * - Cutoff (vdW)
           - 10.
           - 10.
           - 10.
           - 10.
         * - Cutoff (Coulomb)
           - 10.
           - 10.
           - 10.
           - 10.
         * - PPPM order
           - 4
           - 4
           - 4
           - 4
         * - K-space accuracy
           - 1e-5
           - 1e-5
           - 1e-5
           - 1e-5
           
      .. list-table::
         :header-rows: 1
         
         * - 
           - | Minimize
           - | NVT
           - | NPT
           - | NVE
         * - Pair style
           - lj/cut/coul/long
           - lj/cut/coul/long
           - lj/cut/coul/long
           - lj/cut/coul/long
         * - Time step
           - 
           - 0.5
           - 0.5
           - 0.5
         * - # of time steps
           - 20000
           - 20000
           - 20000
           - 20000
         * - Ensemble
           - minimize
           - nvt
           - npt
           - nve
         * - | Generate 
             | initial velocity
           - 
           - True
           - False
           - False
         * - Temperature
           - 
           - 300
           - 300
           - 
         * - Pressure
           - 
           - 
           - 1.0
           - 
         * - Boundary Condition
           - p p p
           - p p p
           - p p p
           - p p p
         * - Reset COM motion
           - linear
           - linear
           - linear
           - linear
         * - Tchain
           - 
           - 1
           - 1
           - 
         * - Pchain
           - 
           - 
           - 1
           - 
         * - Shake tolerance
           - 
           - 1e-9
           - 1e-9
           - 1e-9
         * - | Dump interval
             | (dump)
           - 400
           - 400
           - 400
           - 400
         * - | Dump interval
             | (xtc)
           - 400
           - 400
           - 400
           - 400
         * - Log interval
           - 40
           - 40
           - 40
           - 40
         * - Cutoff (vdW)
           - 15.
           - 15.
           - 15.
           - 15.
         * - Cutoff (Coulomb)
           - 15.
           - 15.
           - 15.
           - 15.
         * - PPPM order
           - 
           - 
           - 
           - 
         * - K-space accuracy
           - 
           - 
           - 
           - 
           
      .. list-table::
         :header-rows: 1
         
         * - 
           - | Minimize
             | (vapor,fast)
           - | NVT
             | (vapor,fast)
           - | NPT
             | (vapor,fast)
           - | NVE
             | (vapor,fast)
         * - Pair style
           - lj/cut/coul/cut
           - lj/cut/coul/cut
           - lj/cut/coul/cut
           - lj/cut/coul/cut
         * - Time step
           - 
           - 2.0
           - 2.0
           - 2.0
         * - # of time steps
           - 5000
           - 5000
           - 5000
           - 5000
         * - Ensemble
           - minimize
           - nvt
           - npt
           - nve
         * - | Generate 
             | initial velocity
           - 
           - True
           - False
           - False
         * - Temperature
           - 
           - 300
           - 300
           - 
         * - Pressure
           - 
           - 
           - 1.0
           - 
         * - Boundary Condition
           - f f f
           - f f f
           - f f f
           - f f f
         * - Reset COM motion
           - angular
           - angular
           - angular
           - angular
         * - Tchain
           - 
           - 3
           - 3
           - 
         * - Pchain
           - 
           - 
           - 3
           - 
         * - Shake tolerance
           - 
           - 1e-5
           - 1e-5
           - 1e-5
         * - | Dump interval
             | (dump)
           - 100
           - 100
           - 100
           - 100
         * - | Dump interval
             | (xtc)
           - 100
           - 100
           - 100
           - 100
         * - Log interval
           - 10
           - 10
           - 10
           - 10
         * - Cutoff (vdW)
           - 10.
           - 10.
           - 10.
           - 10.
         * - Cutoff (Coulomb)
           - 10.
           - 10.
           - 10.
           - 10.
         * - PPPM order
           - 
           - 
           - 
           - 
         * - K-space accuracy
           - 
           - 
           - 
           - 
           
      .. list-table::
         :header-rows: 1
         
         * - 
           - | Minimize
             | (vapor)
           - | NVT
             | (vapor)
           - | NPT
             | (vapor)
           - | NVE
             | (vapor)
         * - Pair style
           - lj/cut/coul/cut
           - lj/cut/coul/cut
           - lj/cut/coul/cut
           - lj/cut/coul/cut
         * - Time step
           - 
           - 0.5
           - 0.5
           - 0.5
         * - # of time steps
           - 20000
           - 20000
           - 20000
           - 20000
         * - Ensemble
           - minimize
           - nvt
           - npt
           - nve
         * - | Generate 
             | initial velocity
           - 
           - True
           - False
           - False
         * - Temperature
           - 
           - 300
           - 300
           - 
         * - Pressure
           - 
           - 
           - 1.0
           - 
         * - Boundary Condition
           - f f f
           - f f f
           - f f f
           - f f f
         * - Reset COM motion
           - angular
           - angular
           - angular
           - angular
         * - Tchain
           - 
           - 1
           - 1
           - 
         * - Pchain
           - 
           - 
           - 1
           - 
         * - Shake tolerance
           - 
           - 1e-9
           - 1e-9
           - 1e-9
         * - | Dump interval
             | (dump)
           - 400
           - 400
           - 400
           - 400
         * - | Dump interval
             | (xtc)
           - 400
           - 400
           - 400
           - 400
         * - Log interval
           - 40
           - 40
           - 40
           - 40
         * - Cutoff (vdW)
           - 15.
           - 15.
           - 15.
           - 15.
         * - Cutoff (Coulomb)
           - 15.
           - 15.
           - 15.
           - 15.
         * - PPPM order
           - 6
           - 6
           - 6
           - 6
         * - K-space accuracy
           - 1e-9
           - 1e-9
           - 1e-9
           - 1e-9
           
      .. list-table::
         :header-rows: 1
         
         * - 
           - | Minimize
             | (ReaxFF)
           - | NVT
             | (ReaxFF)
           - | NPT
             | (ReaxFF)
           - | NVE
             | (ReaxFF)
         * - Pair style
           - reax/c
           - reax/c
           - reax/c
           - reax/c
         * - Time step
           - 
           - 0.5
           - 0.5
           - 0.5
         * - # of time steps
           - 20000
           - 20000
           - 20000
           - 20000
         * - Ensemble
           - minimize
           - nvt
           - npt
           - nve
         * - | Generate 
             | initial velocity
           - 
           - True
           - False
           - False
         * - Temperature
           - 
           - 300
           - 300
           - 
         * - Pressure
           - 
           - 
           - 1.0
           - 
         * - Boundary Condition
           - p p p
           - p p p
           - p p p
           - p p p
         * - Reset COM motion
           - linear
           - linear
           - linear
           - linear
         * - Tchain
           - 
           - 1
           - 1
           - 
         * - Pchain
           - 
           - 
           - 1
           - 
         * - Shake tolerance
           - 
           - 1e-9
           - 1e-9
           - 1e-9
         * - | Dump interval
             | (dump)
           - 400
           - 400
           - 400
           - 400
         * - | Dump interval
             | (xtc)
           - 400
           - 400
           - 400
           - 400
         * - Log interval
           - 40
           - 40
           - 40
           - 40
         * - Cutoff (vdW)
           - 15.
           - 15.
           - 15.
           - 15.
         * - Cutoff (Coulomb)
           - 15.
           - 15.
           - 15.
           - 15.
         * - PPPM order
           - 
           - 
           - 
           - 
         * - K-space accuracy
           - 
           - 
           - 
           - 
           
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
      Force Field/Potential File
         :guilabel:`Units` がrealの場合には、力場の種類を指定します。special_bonds, bond_style, angle_style, dihedral_style, improper_styleキーワードに影響します。
         
         :guilabel:`Units` がreal以外の場合には、ポテンシャルファイルを選択します。LAMMPS本体をインストールしたフォルダ直下の :file:`Potential` フォルダ内のファイルをリストアップします。選択肢は :guilabel:`Units` および :guilabel:`Pair Style` に応じて変わります。
      Time Step
         時間積分の刻み幅を指定します。単位は選択した :guilabel:`Unit` により変わります。
      # of Time Steps
         時間積分ステップの最大数を指定します。
      Ensemble
         時間積分の種類を指定します。 ``nvt`` （温度一定のカノニカルアンサンブル）,  ``npt`` （温度、圧力一定のアンサンブル）,  ``nve`` （体積とエネルギー一定のミクロカノニカルアンサンブル）,  ``minimize`` （CG法によるエネルギー最小化）のいずれかを選択します。
      Generate Velocity
         チェックをした場合は初速度が与えられます。
      Random Seed
         初速度発生時の擬似乱数の種を指定します。
      Temperature
         目標温度を指定します。アニーリング計算時には始状態の温度を指定します。
      Tdamp
         温度制御の時定数パラメータを指定します。
      Pressure Control
         圧力制御の際のセルの動かし方を指定します。
      Pressure
         目標圧力を指定します。
      Pdamp
         圧力制御の時定数パラメータを指定します。
   Advanced
      Boundary X Y Z
         周期境界条件を指定します。 ``p`` （periodic）, ``f`` （non-periodic and fixed）, ``s`` （non-periodic and shrink-wrapped）,  ``m`` （non-periodic and shrink-wrapped with a minimum value）のいずれかを選択します。
      Energy Tolerance
         minimize計算時のエネルギーに関する打ち切り誤差を指定します。
      Force Tolerance
         minimize計算時の力に関する打ち切り誤差を指定します。
      Reset COM Motion
         MD計算時に系全体の重心の運動を凍結する方法を選びます。
      Reset Interval
          :guilabel:`Reset COM Motion` の頻度をタイムステップで指定します
      Tchain
         Nose-Hoover chainの段数を指定します。
      Pchain
         圧力制御の段数を指定します。
      Constrain hydrogen atoms
         水素原子をSHAKE法で拘束します。
      SHAKE tolerance
         SHAKE法の打ち切り誤差を指定します。
      Calculate as rigid body
         分子を剛体として扱います。
      Set "box tilt large"
         シミュレーションセルの変形の許容度合を指定します。
   Output
      Dump Interval (dump)
         dump形式で座標を出力する頻度をタイムステップ数で指定します。
      Dump Interval (xtc)
         xtc形式で座標を出力する頻度をタイムステップ数で指定します。
      Dump Interval (xyz)
         xyz形式で座標を出力する頻度をタイムステップ数で指定します。
      Log Interval
         log ファイルにエネルギー変数を書き出す頻度をタイムステップ数で指定します。
      Sort dump file by id
         dumpファイル内の粒子の並びをid（通し番号）でソートされた形にします。
      Calculate Fluctuation Properties
         熱力学量の揺らぎから比熱と等温圧縮率をon-the-flyで計算し出力します。
      Calculate Thermal Conductivity
         原子の流速の自己相関関数とGreen-Kubo式から熱伝導率をon-the-flyで計算し出力します。
      Calc Interval
         熱伝導率計算における自己相関関数の算出頻度を指定します。
      ACF Length
         熱伝導率計算における自己相関関数の長さを指定します。
      Calculate viscosity
         圧力テンソルの自己相関関数とGreen-Kubo式から粘度をon-the-flyで計算し出力します。
      Calc Interval
         粘度計算における自己相関関数の算出頻度を指定します。
      ACF Length
         粘度計算における自己相関関数の長さを指定します。
   Interaction
      Modify cutoff radii not to exceed L/2
         チェックを入れた場合は、Cutoff (vdw), Cutoff (Coulomb)が格子定数の半分を超えないように自動調整します。
      Neighbor Search
         近接粒子探索時のアルゴリズムを指定します。
      Neighbor Skin
         近接粒子探索時の探索半径の余分を指定します。
      Cutoff(vdw)
         vdw(LJ)ポテンシャルのカットオフ半径を指定します。
      Enable Long Range Correction
         vdwポテンシャルのカットオフ補正項の有無を指定します。
      Cutoff(Coulomb)
         Coulomb(静電)ポテンシャルのカットオフ半径を指定します。
      Automatically set Nmesh
         :guilabel:`Pair Style` = ``lj/cut/coul/long`` の際に使用されるPPPM法のメッシュ数をK-space accuracyから自動的に設定します。
      Nmesh for kx, ky, kz
         PPPM法のメッシュ数を指定します。
      PPPM Order
         PPPM法のSpline補間次数を指定します。
      K-space accuracy
         PPPM法の許容相対誤差を指定します。
   Non-equiliibrium (1)
      Enable Elongation
         伸長計算を有効にします。 :guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Affine Transformation
         伸長計算時に原子位置をシミュレーションセルに合わせてアフィン（相似）変形するか指定します。
      Eng. Strain Rate
         伸長計算時の伸長速度を工業ひずみで指定します。 :guilabel:`Max Eng. Strain` には最終ステップにおけるひずみの予測値が表示されます。
      Preserve Volume
         伸長計算時に、シミュレーションセルの体積を一定に保つよう伸長方向に垂直な方向のセルサイズを変形させます。
      Enable Pulling
         指定した原子群を一定速度で移動させるPull計算を有効にします。 :guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Pulled Atoms
         予め :ref:`select_select_registered_group` でPullしたい原子を登録しておいた状態で :guilabel:`Select Group` ボタンを押し、そのグループを選択します。
      Pull Velocity
         Pull計算時の、Pull速度を指定します。
      Enable Simulated Annealing
         アニーリング計算（温度を一定速度で変化させる計算）を有効にします。 :guilabel:`Ensemble` が ``nvt`` , ``npt`` の時に指定できます。 :guilabel:`Temperature` の値が始状態の温度、 :guilabel:`Final Temperature` の値が終状態の温度となります。
      Final Temperature
         アニーリング計算時の終状態の温度を指定します。
      Annealing Rate
         アニーリング計算時の加熱または冷却速度が表示されます。
      Enable pressurization
         圧縮計算（圧力を一定速度で変化させる計算）を有効にします。 :guilabel:`Ensemble` が ``npt`` , ``nph`` の時に指定できます。 :guilabel:`Pressure` の値が始状態の圧力、 :guilabel:`Final Pressure` の値が終状態の圧力となります。
      Final Pressure
         圧縮計算時の終状態の圧力を指定します。
      Enable electric field
         外部電場を与えます。 :guilabel:`Sine wave` を選ぶと、正弦波的に電場を与えます。 :guilabel:`Constant` を選ぶと、定常的に電場を与えます。
      Amp & Freq
         各方向の強度（Amp）と周波数（Freq）を与えます。 :guilabel:`Enable electric field` で :guilabel:`Sine wave` を選んだ時は下式で電場が与えられ、Aが強度、fが周波数となります。 :guilabel:`Constant` を選んだ時は強度のみが使われます。
         
         .. math::
            A \sin ( 2 \pi f t)
            
   Restraint
      Enable Restraint
         指定した2原子間の距離を拘束した計算を実施します。:guilabel:`Ensemble` が ``minimize`` 以外の時に指定できます。
      Restrained Atoms
         :guilabel:`Set` ボタンをクリックすると、マーカーが付いた2原子が拘束のターゲットとなります。
      Bond Length
         拘束計算時の、2原子間の拘束距離を指定します。
      Initial Strength
         拘束計算時の、始状態における拘束ポテンシャルのバネ係数を指定します。
      Final Strength
         拘束計算時の、終状態における拘束ポテンシャルのバネ係数を指定します。
      Enable Position Restraint
         指定した原子の絶対座標を固定した計算を実施します。固定されていない原子の温度はlogにTempFreeとして出力されます。
      Restrained Atoms
         予め :ref:`select_select_registered_group` で拘束したい原子を登録しておいた状態で :guilabel:`Select Group` ボタンを押し、そのグループを選択します。
   Automatic
      Rescale velocities to..
         NVEアンサンブルにおいて目標温度に系の温度を近づけたい時に使います。計算中の平均温度とここで入力した温度からスケーリング係数を算出して、最終構造の各粒子の速度をスケーリングします。
      Rescale box size to..
         NPTアンサンブルで計算した後に、設定圧力に近い状態でNVEまたはNVTアンサンブルで計算した場合に使用します。最終構造を、計算中の平均セルサイズにスケーリングします。
   Manual entry
      生成されるLAMMPSのインプットスクリプト(inファイル)の中身が表示されます。この場所で直接編集することも可能です。
   Options
      Make a Backup of Working Directory
         作業ディレクトリのバックアップを行う際に選択します。
      Restore Working Directory
         継続ジョブが異常終了時など、作業ディレクトリを実行前の状態に戻す際にクリックします。
      Dump all files for remote
         Linux環境でのジョブ実行に必要なファイルを出力します。 :ref:`remote_top` 機能で生成されるファイルと同じファイルが出力されます。
      Generate gro & ndx files every time
         チェックが入っていない場合は、継続ジョブの時にgroとndxファイルを生成しません。

.. _md_lammps_start:

LAMMPS実行
------------------------------

   LAMMPSを実行します。
   状況に応じて実行方法が異なります。

      - （デフォルト） :guilabel:`Extending Simulation` にチェックがなく、 :ref:`md_lammps_forcefield` において :guilabel:`自動でパラメータを割り当て` または :guilabel:`パラメータファイルを使用（無機物、ReaxFF、DPD向け）` を選択した場合
         dataファイル（座標とトポロジを含むファイル）を新規に生成してからジョブを開始します。
      - :guilabel:`Extending Simulation` にチェックがなく、 :ref:`md_lammps_forcefield` において :guilabel:`メインウィンドウのファイルに書かれたパラメータを使用` を選択した場合
         メインウィンドウで開かれているdataファイルを使用してジョブを開始します。
      - :guilabel:`Extending Simulation` にチェックがある場合
         メインウィンドウで開かれているdataファイルに紐づけられた作業ディレクトリの中にある :file:`lmp_tmp_final.data` 用いてジョブを開始します。

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

   ジョブは :ref:`winmosjm_top` を通じて実行されます。

ログを表示
----------------------------

   LAMMPSのログファイル（ :file:`\*.log` ）をテキストエディタで開きます。

.. _md_lammps_trajectory:

アニメーション
-----------------------------

   dataファイルとdumpファイルを選択し、MD計算のトラジェクトリをアニメーション表示します。
   
   メインウィンドウのファイル名は変化しません。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
.. _md_lammps_energy:

エネルギー変化
------------------------------

   ログファイルを選択し、エネルギー、温度、圧力などの各種熱力学量のグラフを表示します。thermo_styleで指定した値をプロットすることができます。
   
   サブウィンドウの操作方法は :ref:`energyplot_top` を参照してください。

最終構造を読み込み
---------------------------

   :file:`\*_lmp_tmp\\lmp_tmp_final.gro` を開きます。
   
   本機能を使うとメインウィンドウのファイル名は変化しません。

結果解析
------------------------------


動径分布関数
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、動径分布関数を表示します。
   
   詳細は :ref:`md_gromacs_rdf` を参照してください。

自己拡散係数/平均二乗変位
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、平均二乗変位と自己拡散係数を表示します。
   
   詳細は :ref:`md_gromacs_msd` を参照してください。

散乱関数
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、散乱関数を表示します。
   
   詳細は :ref:`md_gromacs_saxs` を参照してください。
   
比誘電率/双極子モーメント
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndx, mdp, topファイルを選択し、散乱関数を表示します。
   
   詳細は :ref:`md_gromacs_permittivity` を参照してください。
   
密度分布
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndx, mdp, topファイルを選択し、密度分布を表示します。
   
   詳細は :ref:`md_gromacs_densityprof` を参照してください。
   
自由体積
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndx, mdp, topファイルを選択し、自由体積を表示します。
   
   詳細は :ref:`md_gromacs_freevolume` を参照してください。
   
各種自己相関関数
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   Green-Kubo式を用いた熱伝導率、粘度算出時に出力される自己相関関数を表示します。
   
距離/角度/二面角分布
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndx, mdp, topファイルを選択し、選択グループ間の距離、角度、または二面角の分布を表示します。

   詳細は :ref:`md_gromacs_distance_angle` を参照してください。
   

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
      ウィンドウを閉じます。

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
      設定したポテンシャルパラメ-タをポテンシャルファイルに保存してウィンドウを閉じます。
   Close
      設定内容を破棄してウィンドウを閉じます。

