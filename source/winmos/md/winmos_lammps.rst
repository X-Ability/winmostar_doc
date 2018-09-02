.. include:: ../../common.rst

.. _md_lammps_top:

:menuselection:`MD --> LAMMPS` メニュー
============================================

.. _md_lammps_flow:

LAMMPS計算の処理の流れ
----------------------------

   1) 計算したい分子をメインウインドウで作成しmol2形式で保存します。
   
   2) :ref:`md_solvate_buildcell` にてシミュレーションセルを作成します。
   
   3) :ref:`md_lammps_keyword` にて計算条件を設定します。
   
      .. note::
         - 他の環境で作成したdataファイルを使用して計算を流す場合は、dataファイルをメインウインドウで開き、:ref:`md_lammps_keyword` の :guilabel:`Force Field` で選択します。

   4) :ref:`md_lammps_start` を選んでLAMMPS形式の座標＆トポロジ（data）ファイルを保存すると、自動でdataファイルと同名のbatファイルが生成し、そのbatファイルが実行されます。計算結果は接尾辞が :file:`_lmp_tmp` の **作業ディレクトリ** に収められます。
   
      .. include:: ../winmos_workingdir.rst
      
   5) 継続ジョブを実行する場合は、メインウインドウで開かれているdataファイルと同階層に作業ディレクトリが置かれている必要があります。
   
      .. note::
         - 継続ジョブでは、直前のジョブの作業ディレクトリの :file:`lmp_tmp_final.data` を用いてジョブが開始されます。
   
   6) :ref:`md_lammps_energy` 、 :ref:`md_lammps_trajectory` など各種の結果処理機能を選択した時に、 :guilabel:`開く` ダイアログでデフォルトで選択されるファイルは、メインウインドウで開かれたファイルに紐づけられた作業ディレクトリの中のファイルとなります。
   
.. _md_lammps_keyword:

キーワード設定
------------------------

   LAMMPS計算用のキーワードを設定します。設定後 :guilabel:`OK` ボタンをクリックします。
   
   Extending Simulation
      :ref:`継続ジョブ <md_lammps_flow>` を実行します。
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
         :ref:`作業ディレクトリ <md_lammps_flow>` のバックアップを行う際に選択します。
      Restore Working Directory
         継続ジョブが異常終了時など、:ref:`作業ディレクトリ <md_lammps_flow>` を実行前の状態に戻す際にクリックします。
      Dump all files for remote
         Linux環境でのジョブ実行に必要なファイルを出力します。 :ref:`remote_top` 機能で生成されるファイルと同じファイルが出力されます。

   .. include:: winmos_gromacs_forcefield.rst

   Load
      Winmostar独自形式(lmpset)で保存された計算条件を読み込みます。
   Save
      Winmostar独自形式(lmpset)で計算条件を保存します。

.. _md_lammps_start:

LAMMPS実行
------------------------------

   :ref:`md_lammps_flow` の内容に基づきLAMMPSが実行されます。

.. _md_lammps_trajectory:

トラジェクトリ読み込み
------------------------------

   dumpファイルを選択し、MD計算のトラジェクトリをアニメーション表示します。
   メインウインドウのファイル名は変化しません。
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

logファイル編集
------------------------------

   LAMMPSのログファイル（ :file:`\*.log` ）をテキストエディタで開きます。

.. _md_lammps_energy:

エネルギー変化
------------------------------

   LAMMPSが出力したlogファイルを選択し、エネルギー、温度、圧力などの各種熱力学量のグラフを表示します。

動径分布関数
------------------------------

   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、動径分布関数を表示します。
   詳細な機能は :ref:`md_gromacs_rdf` を参照してください。

平均二乗変位
------------------------------
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、平均二乗変位と自己拡散係数を表示します。
   詳細な機能は :ref:`md_gromacs_msd` を参照してください。

散乱関数
------------------------------
   LAMMPSが出力したxtcファイルとWinmostarが自動生成したgro, ndxファイルを選択し、散乱関数を表示します。
   詳細な機能は :ref:`md_gromacs_saxs` を参照してください。
