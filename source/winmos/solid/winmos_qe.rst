.. include:: ../../common.rst

.. _solid_qe_top:

:menuselection:`固体 --> Quantum ESPRESSO` メニュー
=====================================================

   Quantum ESPRESSOに関するメニューです。
   
   Quantum ESPRESSOをインストールする方法は :ref:`install_install` に記載しています。
   
.. _solid_qe_keywords:

キーワード設定
------------------------

   Quantum ESPRESSOの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`solid_qe_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save` ボタンでForce Fieldを除く設定を保存します。
   :guilabel:`Load` ボタンで :guilabel:`Save` にて保存した設定を読み込みます。

   :ref:`キーワード表示エリア <gui_main>` に表示されているQuantum ESPRESSOのキーワードと本機能のウィンドウに設定された内容が異なる場合は、キーワード表示エリアからキーワードを読み込むか尋ねられます。
   
   本機能を呼び出すときに、メインウィンドウに表示された構造がプリミティブセルに変化できる場合は、自動で :ref:`solid_convertcell` が実行されます。

   Output Directory
      データの出力先フォルダ(outdir)を指定すると同時に、ジョブの新規・継続実行を指定します。
      
      Create
         新規にデータの出力先フォルダを作成します。outdirは新規フォルダに設定されます。
      Continue
         メイン画面に読み込まれている、直前に実行されたQEのジョブを継続します。outdirは直前に実行されたジョブのoutdirに設定されます。
      Select...
         開いたダイアログで指定したフォルダを出力先に指定し、そのフォルダのデータからジョブを継続します。outdirはここで指定したものに設定されます。
   Preset
      設定のプリセットを選択します。
   Use MPI
      QEの実行時にMPIを用いて並列計算を実行するか指定します。横の欄にはMPIプロセス数を入力します。
   Basicタブ
      calculation
         計算の種類を選択します。
      Use nbnd
         バンド数を指定します。チェックを入れない場合は自動で設定されます。括弧内に選択されたは擬ポテンシャルを使用したときの価電子数が表示される。価電子数の自動計算に失敗した場合はN/Aと表示される。
      K_POINTS
         K点の指定方法をプルダウンから選び、下のテキストボックスにQEの書式でK点を指定します。
         gammaの場合はΓ点のみで計算されます。
         automaticの場合は「(kx方向の分割数) (ky方向の分割数) (kz方向の分割数) (kx方向のシフトフラグ) (ky方向のシフトフラグ) (kz方向のシフトフラグ)」（スペース区切り）を入力します。シフトフラグは0のときにシフトなし（k点がΓ点を含む）、1のときにシフトあり（k点がΓ点を跨ぐ）となります。
         その他詳細はpw.xのマニュアルまたはQEインストールフォルダ以下のdoc/brillouin_zones.pdfをご参照ください。

         Set default k-path
            メインウィンドウに表示されている結晶について検出されたブラベー格子（ibrav）のデフォルトのk点パスをUserPref/kpath_default.txtから取得して設定します。
      nosym
         空間対称性の利用の有無を指定します。
      noinv
         時間反転対称性の利用の有無を指定します。
      Set ibrav = ... and celldm
         メインウィンドウにプリミティブセルが表示されていて、チェックが入っている場合は、適当なibravとcelldmを設定します。
         チェックが入っていない場合は、ibrav=0とし、CELL_PARAMETERSを設定します。
      ecutwfc
         波動関数の計算時の平面波のカットオフエネルギーを指定します。
      ecutrho
         電子密度およびポテンシャル計算時の平面波のカットオフエネルギーを指定します。
      tot_charge
         シミュレーションセル内の系全体の電荷を指定します。
      occupations
         金属の場合はsmearing, DOS計算の場合はtetrahedronを指定します。
      ion_dynamics
         イオン（原子核）位置を変化させるアルゴリズムを指定します。
      cell_dynamics
         シミュレーションセルを変化させるアルゴリズムを指定します。
      tprnfor
         力を計算します。
      tstress
         圧力テンソルを計算します。
   Advanceタブ
      conv_thr
         SCF計算時のエネルギーの許容誤差を指定します。
      etot_conv_thr
         構造最適化(relax)計算時のエネルギーの許容誤差を指定します。
      forc_conv_thr
         構造最適化(relax)計算時の力の許容誤差を指定します。
      press_conv_thr
         セルの構造最適化(relax-vc)計算時の圧力の許容誤差を指定します。
      electron_maxstep
         SCF計算の最大反復数を指定します。
      nstep
         構造最適化(relax)計算の最大ステップ数およびMD計算のステップ数を指定します。
      upscale
         構造最適化(relax)計算の最中にconv_thrを自動的に小さくする際の係数を指定します。
      diagonalozation
         対角化アルゴリズムを指定します。
      lspinorb
         ノンコリニア計算時にスピン軌道相互作用付きの擬ポテンシャルファイルを使えるようにします。
      smearing
         占有平滑化(smearing)の方法を指定します。
      degauss
         占有平滑化のパラメータを指定します。
      mixing_beta
         SCF計算における新旧のKS軌道の混合比を指定します。1に近いほど予測値の割合が大きくなります。
      mixing_mode
         新旧のKS軌道の混合アルゴリズムを指定します。
      vdw_corr
         ファンデルワールス（分散）力の補正方法を指定します。
      Use input_dft
         チェックを入れた場合は、汎関数の設定を擬ポテンシャルファイルに書かれた設定に対し上書きします。
      cell_dofree
         シミュレーションセルを動かす際の自由度（方向）を指定します。
      Use cell_factor
         擬ポテンシャルテーブルの構築パラメータを明示的に指定します。vc-relax（セルサイズの変化を伴う構造最適化計算）の際に大きい値を設定した方がいい場合があります。
   Spin/DFT+Uタブ
      nspin
         スピン分極計算の設定をします。
      Use tot_magnetization
         チェックを入れた場合は、ここで系全体の磁化を指定します。チェックしない場合はstarting_magnetizationを指定します。
      starting_magnetization
         各原子種の磁化の初期値を与えます。
      lda_plus_u
         LDA+U計算を実行します。
      Hubbard_U/alpha
         各原子種のHubbardのUおよびalphaパラメータを指定します。
   Phononタブ
      Run Phonon Calculation as Postprocess
         フォノン計算を実行します。
         具体的には、pw.xを実行した後にph.xを実行します。
         この項目を有効にするためには、CalculationにSCFまたはrelaxを選ぶ必要があります。
         ph.xなどの入出力ファイルは作業ディレクトリ内に作成されます。
      Threshold
         フォノン計算の打ち切り誤差を指定します。
      Calc Macroscopic Dielectric Constant
         フォノン計算から得られる誘電率を計算します。
      Calc Non-resonant Raman
         Ramanスペクトルの計算を含めます。
      Acoustic Sum Rule
         フォノン計算後のスペクトル算出時（dynmat.x）のAcoustic Sum Ruleの与え方を指定します。フォノン計算そのものには影響を与えません。
      Calc Phonon Dispersion
         フォノン分散を計算します。フォノンバンド構造、フォノン状態密度を取得するためにはこれを指定する必要があります。
      K Points (Dispersion)
         フォノン分散の計算時のK点の数を指定します。
   Dynamicsタブ
      Simulation Package
         MD計算に使用する計算パッケージを指定します。cp.xの場合はCPMD法を使います。
      dt
         MD計算の時間刻みをatomic unitで指定します。
      tempw
         MD計算で温度制御を指定した際の目標温度を指定します。
      press
         MD計算で圧力制御を指定した際の目標圧力を指定します。
      ion_temperature
         MD計算のイオン（原子核）の温度制御方法を指定します。
      ion_velocities
         MD計算のイオンの初速度を指定します。
      tolp
         温度制御時の温度の許容値を指定します。
      pot_extrapolation
         Born-Oppenheimer MD使用時のポテンシャルの外挿方法を指定します。
      wfc_extrapolation
         Born-Oppenheimer MD使用時の波動関数の外挿方法を指定します。
      electron_dynamics
         Car-Parrinello MD使用時のKS軌道を変化させるアルゴリズムを指定します。
      electron_velocities
         Car-Parrinello MD使用時の電子の初速度を指定します。
      emass
         Car-Parrinello MD使用時の電子の仮想質量を指定します。
      emass_cutoff
         Car-Parrinello MD計算時の電子の仮想質量のカットオフ値を指定します。
      orthogonalization
         行列計算（正規直交化）の方法を指定します。
   ESMタブ
      assume_isolated=esm
         ESM(Effective Screening Medium, 有効遮蔽媒質)法を使用する場合はチェックを入れます。
      esm_bc
         ESM法で使われる境界条件の種類を指定します。
      esm_efield
         電場を指定します。
      lfcpopt
         化学ポテンシャル一定(constant mu)計算を実施します。初期の系全体の電荷はBasicタブのtot_chargeで指定されます。
      fcp_mu
         化学ポテンシャル一定計算でのフェルミエネルギーの目標値を設定します。
      Enter Relative Potential...
         Target Fermi Energyの入力をサポートします。
         まず、電圧0での計算のログファイルを指定し、電圧0でのフェルミエネルギーを取得します。
         次に、印加電圧を入力します。
         これら2つの情報から、Target Fermi Energyを算出します。
   Otherタブ
      QEの入力ファイルの書式（FORTRANのnamelist形式）で、その他の設定を記入します。
      記入例は、ポインタを重ねると表示されます。
   Options
      Verbosity
         QEが出力する情報量を指定します。
      atomic_position unit
         ATOMIC_POSITIONSおよびCELL_PARAMETERSの単位を指定します。
      Use max_seconds
         チェックを入れた場合、ここに入力した秒数の経過後QEの処理が中断されます。
      Make a Backup of Working Directory
         Output DirectoryがCreateの際に、作成される_qe_dataフォルダが既に存在する場合、フォルダ名末尾に数字を付加して既に存在するフォルダをバックアップします。
      Dump all files for remote
         Linux環境でのジョブ実行に必要なファイルを出力します。リモートジョブ投入機能で生成されるファイルと同じファイルが出力されます。
      Open  k-path file
         ibrav（ブラべ格子）の種類ごとにデフォルトで指定するk点パスを記述する設定ファイル（UserPref/kpath_default.txt）を開きます。UserPref/kpath_default.txtが存在しない場合はwmx/kpath_default.txtからコピーされます。
      Use RISM-enabled QE
         RISMが実装されたQEを使う場合にチェックを入れます。
   Propertiesタブ
      Calculate these properties after pw.x
         pw.x実行直後に実行されるポスト処理を選択します。ここで選択した処理の各種パラメータは右のParameter/Value欄にて指定します。
   Pseudo Potentialsタブ
      Mass
         各元素の質量を指定します。
         
         Default
            標準的な質量を設定します。
         Light
            全元素の質量を1に設定します。イオンの構造緩和の促進などの目的で使われます。
         Manual
            下のリスト内で、各元素に対し、ユーザーが個別に質量を設定します。
      Pseudo Potential
         系内の全元素に共通して存在する種類の擬ポテンシャルをプルダウンで選択できます。
         (Manual)を選んだ場合は、下のリスト内で、各元素に対し、ユーザーが個別に擬ポテンシャルを設定します。
         擬ポテンシャルファイルは、pseudo Directoryで指定したフォルダの中から検索されます。
         UserPref/qe_pseudo_priority_list.txtの先頭に書かれたものが優先的に選択されます。
      Reload pseudo Files
         pseudo Directoryで指定したフォルダに配置された擬ポテンシャルファイルを再度読み込みます。
      pseudo Directory
         擬ポテンシャルファイルを配置するフォルダを指定します。
         :guilabel:`pseudo in QE's directory` の場合は、QEのインストールディレクトリ以下のpseudoフォルダを用います。
         :guilabel:`(select...)` の場合は、ダイアログで選択したディレクトリを用います。
      Open Pseudo Directory
         pseudo Directoryで指定したフォルダを開きます。
      Download Pseudo Files
         擬ポテンシャルファイルをダウンロードしてインストールします。
      Open Priority List
         UserPref/qe_pseudo_priority.txtを開きます。存在しない場合はwmx/qe_pseudo_priority.txtからコピーされます。

.. _solid_qe_start:

実行
------------------------

   Quantum ESPRESSOを実行します。
   状況に応じて実行方法が異なります。
   
   CPMDを選択したときは :command:`cp.x` 、それ以外の時は :command:`pw.x` が実行されます。
   
      - （デフォルト） :guilabel:`Output Directory = Create` の時は、作業ディレクトリを新規に作成して計算を実行します。
      -  :guilabel:`Output Directory = Continue` の時は、その時メインウィンドウで開いている入力ファイルのoutdirを作業ディレクトリとして使用します。
      -  :guilabel:`Output Directory = Select` の時は、選択したフォルダを作業ディレクトリ（outdir）として使用します。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`si.pwin` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | pwoutファイル
             | :file:`si.pwout`
           - 計算のログファイルです。
         * - | batファイル
             | :file:`si.bat`
           - Quantum ESPRESSOを実行するためのバッチファイルです。
         * - | 作業ディレクトリ
             | :file:`si_qe_data\\`
           - | 作業ディレクトリです。
           
   作業ディレクトリには以下のファイルが生成されます。
   ここでは主要なファイルのみ示しています。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1
         
         * - 種類
           - 説明
         * - | 擬ポテンシャルファイル
             |  :file:`\*.UPF`
           - | 計算に使用する擬ポテンシャルファイルは
             | ここにコピーされ、ESPRESSO_PSEUDO環境変数は
             | 作業ディレクトリに設定されます。
         * - | :file:`gmx_tmp.mdp`
           - | 計算条件を指定するファイルです。
         * - | :file:`pw_bands.in`
           - | ポスト処理でbands計算を実行する際の入力ファイルです。
         * - | :file:`pw_bands.out`
           - | :file:`pw_bands.in` のログファイルです。
         * - | :file:`pw_dos.in`
           - | ポスト処理でdos計算を実行する際の入力ファイルです。
         * - | :file:`pw_dos.out`
           - | :file:`pw_dos.in` のログファイルです。
         * - | :file:`ph.in`
           - | ポスト処理で :command:`ph.x` を用いてフォノン計算を
             | 実行する際の入力ファイルです。
         * - | :file:`ph.out`
           - | :file:`ph.in` のログファイルです。

      .. include:: ../winmos_workingdir.rst
      
ログを表示 (pwout)
----------------------------

   ログファイルをテキストエディタで開きます。

.. _solid_qe_animation:

アニメーション
-----------------------------

   ログファイルの情報から構造最適化、BOMD計算等のアニメーションを作成し表示します。
   
   CPMDの場合は :ref:`solid_qe_cpmd_animation` を使用してください。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

SCFエネルギー変化
---------------------

   ログファイルを選択し、total energyのグラフを表示します。
   
   CPMDの場合は :ref:`solid_qe_cpmd_energy` を使用してください。
   
   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

電子密度
---------------------
   作業ディレクトリ(outdir)を指定し、等電子密度面を表示します。
   
   バックグラウンドではpp.xが流れ、cubeファイルが生成されます。
   
   サブウィンドウの操作方法は :ref:`cube_top` を参照してください。

Lowdin電荷
---------------------
   作業ディレクトリ(outdir)を指定し、点電荷を算出・表示します。

   バックグラウンドでprojwfc.xが流れます。

ポテンシャルエネルギー分布
--------------------------------------
   作業ディレクトリ(outdir)とSCF計算のログファイルを指定し、z軸方向のポテンシャルエネルギー分布を表示します。
   
   SCF計算のログからはフェルミエネルギーを取得します。
   フェルミエネルギーとポテンシャルエネルギー分布の最大値の差を、仕事関数の推定値として表示します。
   バックグラウンドでpp.xとaverage.xが流れます。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

バンド構造
---------------------
   作業ディレクトリ(outdir)とSCF計算のログファイルを指定し、バンド構造を表示します。

   事前にcalculation=bandsで計算が終了している必要があります。
   SCF計算のログファイルからはフェルミエネルギーを取得します。
   バックグラウンドでbands.xが流れます。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

状態密度
---------------------
   作業ディレクトリ(outdir)とSCF計算のログファイルを指定し、状態密度を表示します。

   SCF計算のログファイルからはフェルミエネルギーを取得します。
   バックグラウンドでdos.xが流れます。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

部分状態密度
---------------------
   作業ディレクトリ(outdir)とSCF計算のログファイルを指定し、部分状態密度(PDOS)を表示します。

   SCF計算のログからはフェルミエネルギーを取得します。
   バックグラウンドでprojwfc.xが流れます。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

フェルミ面
---------------------
   SCF計算とbands計算のログファイルを指定し、フェルミ面を表示します。
   
   フェルミ面の表示には `FermiSurfer <http://fermisurfer.osdn.jp/>`_ を使用します。
   :guilabel:`# of K Points` にbands計算時のk点分割数を指定し、 :guilabel:`Calc` ボタンを押すとフェルミ面が表示されます。

誘電関数
---------------------
   誘電関数計算後の作業ディレクトリを指定し、誘電関数を表示します。
      
   Direction
      取得する誘電関数の方向を指定します。
   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

IR/ラマンスペクトル
---------------------
   フォノン計算後の作業ディレクトリとSCF計算のログを指定し、IRおよびラマンスペクトルを表示します。

   サブウィンドウの操作方法は :ref:`ir_top` を参照してください。

フォノン分散曲線
---------------------
   フォノン分散計算後の作業ディレクトリを指定し、フォノン分散曲線を表示します。
   
   ASR
      適用するAcoustic Sum Ruleの種類を指定します。
   K Points
      取得する分散曲線のパスを指定します。
      各行には、x, y, z成分をそれぞれ2pi/aの単位で記述し、その横に次の点までの間の分割数を記述します。（合計4カラムをスペース区切りで入力）
   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

フォノン状態密度
---------------------
   フォノン分散計算後の作業ディレクトリを指定し、フォノン状態密度を表示します。
   
   ASR
      適用するAcoustic Sum Ruleの種類を指定します。
   K Points
      フォノンDOS計算時のK点の分割数を指定します。
   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

電荷/エネルギー分布 (esm1)
--------------------------------------------
   ESM計算（assume_isolated=esm）で出力されるesm1ファイルを指定し、z軸方向の電荷またはエネルギーの分布を表示します。
   
   2つのesm1ファイルの差をプロットすることもできます。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

溶媒原子間相関関数 (1drism)
--------------------------------------------
   RISM計算（trism=.True.）で出力される1drismファイルを用いてRISM領域の原子間相関関数(動径分布関数)を算出します。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

溶媒密度/エネルギー分布(rism1)
--------------------------------------------
   RISM計算（trism=.True.）で出力されるrism1ファイルを用いて、DFT領域-RISM領域が接する方向（界面垂直方向）の溶媒密度・エネルギー・電荷を算出します。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

.. _solid_qe_cpmd_animation:

CPMDアニメーション(pos)
--------------------------------------------
   CPMDのposファイルとcelファイルを指定し、アニメーションを表示します。
   
   pw.xの結果を表示する場合は :ref:`solid_qe_animation` を使用してください。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
.. _solid_qe_cpmd_energy:
   
CPMDエネルギー変化(evp)
--------------------------------------------
   CPMDのevpファイルを指定し、各種エネルギーの時間変化を表示します。

   Draw
      グラフを表示します。
      必要に応じて結果解析用プログラムが実行されます。
   Close
      ウィンドウを閉じます。

   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

NEBキーワード設定
---------------------
   NEB計算の条件を設定します。
   
   始状態と終状態それぞれの構造最適化計算を終えた状態で設定してください。
   
NEB実行
-----------------
   neb.xを用いてNEB計算を実行します。
   
   
遷移状態（NEB）
------------------
   NEB計算後のファイルを指定し、反応座標に沿ったエネルギーと原子構造の変化を表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   