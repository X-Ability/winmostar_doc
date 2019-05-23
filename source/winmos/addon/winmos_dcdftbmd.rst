
DCDFTBMD
===============
   分割統治型の密度汎関数強束縛分子動力学法に関するメニューです。

   使用するためにはアドオンの購入が必要です。

   DCDFTBMDをインストールする方法は :ref:`install_install` に記載しています。

.. _addon_dcdftbmd_keyword:

キーワード設定
------------------------

   DCDFTBMDの計算条件を設定します。設定後 :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save` ボタンで設定を保存します。
   :guilabel:`Load` ボタンで :guilabel:`Save` にて保存した設定を読み込みます。
   
   Extending Simulation
      継続ジョブを実行します。 キーワードRESTART=TRUEが設定され、 :file:`restart` の情報から計算が再開されます。
      
      詳細は :ref:`addon_dcdftbmd_start` を参照してください。
   # of Threads
      OpenMPの並列数を指定します。
   Use MPI
      MPIを使用します。横の欄にはMPI並列数を指定します。
   Basic
      Charge
         系全体の電荷を指定します。
      Multiplicity
         系全体のスピン多重度を指定します。
      Parameter Set
         使用するパラメータの種類を選択します。
         Winmostarのインストールフォルダ（デフォルトでは :file:`C:\\winmos9\\` ）の下の :file:`DFTBParam` フォルダに配置したフォルダの名前がリストアップされます。
         :file:`DFTBParam` フォルダの下に置くフォルダは、skfなどのパラメータファイルを含む必要があります。
         例えば、 :file:`C:\\winmos9\\DFTBParam\\mio-1-1\\C-C.skf` という階層構造が想定されます。
      Open Directory for Parameter Set
         前述の :file:`DFTBParam` フォルダを開きます。
      Reload Parameter Set
         前述の :file:`DFTBParam` フォルダを再度読み込み、 :guilabel:`Parameter Set` のリストを更新します。
      Executable
         計算に使用するDCDFTBMDのバイナリを指定します。
         MPIを使用するときは :file:`dftb_mpiomp_mpich.00.x` などのMPI対応版のバイナリを指定する必要があります。
         ここで指定するバイナリへ、リモートサーバ上でPATHを通しておく必要があります。
   Advance
      Method
         SCCまたはNCCを選択します。
         
         THIRDFULL
            SCC ハミルトニアンに対する3次補正を使用します。
         DAMPXH
            X-Hペアに対するSCC相互作用の短距離でのダンピングを使用します。
         MAXITER
            SCCサイクルの最大数を指定します。
         ECONV
            エネルギー変化の収束条件を指定します。(atomic unit)
         DCONV
            グラジエント変化の収束条件を指定します。(atomic unit)
         DISP
            経験的分散力補正を使用します。
            
            DISPTYPE
               経験的分散力補正の種類を指定します。
      DC
         分割統治法を使用します。
         
         SUBTYPE
            部分系の作り方を指定します。
         BUFRAD
            球状バッファ領域の半径を指定します。(angstrom)
         DELTAR
            SUBTYPE=AUTOで系を立方体空間に分割する際のグリッド (angstrom)
   OPT/FREQ
      OPT
         構造最適化計算を実行します。
         
         MAXITER
            構造最適化サイクルの最大数を指定します。
         DCONV
            グラジエント変化の収束条件を指定します。(atomic unit)
      FREQ
         調和振動解析を実行します。
   MD
      分子動力学計算を実行します。
      
         NSTEP
            ステップ数を指定します。
            :guilabel:`Extending Simulation` にチェックを入れている場合は、継続前のジョブのステップ数とこれから流すジョブのステップ数の和を入力する必要があります。
         DELTAT
            時間刻みを指定します。 (second)
         BATHTEMP
            NVTおよびNPTアンサンブルを利用するときの熱浴温度を指定します。 (Kelvin)
         Ensemble
            アンサンブルの種類を指定します。
         NVTTYPE
            熱浴の設定を指定します。
         INITTEMP
            初期温度を指定します。 (Kelvin)
         PRINT
            シミュレーション中の座標等のファイルへの出力頻度を指定します。
   Properties
      PRINT
         MO
            分子軌道係数を出力します。（部分系の数が1の場合のみ）
         ATOME
            全エネルギーに対する各原子からの寄与を出力します。
         HS
            ゼロ次ハミルトニアン、重なり行列を出力します。（部分系の数が1の場合のみ）
      FORCE
         エネルギーと力の計算を行います。
      STRESS
         応力テンソルと格子ベクトルの微分計算を行います。
         
.. _addon_dcdftbmd_start:

実行
------------------------------

   DCDFTBMDを実行するために、 :ref:`remote_top` を開きます。
   詳細な操作方法は  :ref:`remote_top` を参照してください。
   
   状況に応じて実行方法が異なります。

      - （デフォルト） :guilabel:`Extending Simulation` にチェックがない場合
         実行時にユーザが指定した名前で入力ファイル（拡張子dci）を保存し、それを用いて計算を実行します。
      - :guilabel:`Extending Simulation` にチェックがある場合
         メインウィンドウで開かれた入力ファイルに紐づけられた既存の作業ディレクトリのバックアップを作成し、新たに作成した作業ディレクトリの中に入力ファイルを :file:`dftb.inp` として保存し、それを用いて計算を実行します。

   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.dci` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | dcoファイル
             | :file:`water.dco`
           - | DCDFTMDの標準出力ファイルです。
             | 作業フォルダの :file:`dftb.out` をコピーしたものです。
         * - | シェルスクリプト
             | :file:`water.sh`
           - | DCDFTBMDとそのプリ・ポスト処理を実行するための
             | シェルスクリプトです。
         * - | confファイル
             | :file:`water_conf.sh`
           - | 上記シェルスクリプトの中で使われる変数を収めた
             | ファイルです。
         * - | 作業ディレクトリ
             | :file:`water_dc_data\\`
           - | 作業ディレクトリです。
           
   作業ディレクトリには以下のファイルが生成されます。
   ここでは主要なファイルのみ示しています。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1
         
         * - 種類
           - 説明
         * - | :file:`dftb.inp`
           - | 実際にDCDFTMDに渡される入力ファイル
         * - | :file:`dftb.out`
           - | 標準出力ファイル
         * - | :file:`dftb.dat`
           - | 詳細出力ファイル
         * - | :file:`traject`
           - | MD計算におけるトラジェクトリファイル
         * - | :file:`restart`
           - | リスタート用ファイル

      .. include:: ../winmos_workingdir.rst

ログを表示(dco)
-----------------------------

   dco（標準出力）ファイルをテキストエディタで開きます。
   
ログを表示(dat)
-----------------------------

   詳細出力ファイルをテキストエディタで開きます。
   
.. _addon_dcdftbmd_optanimation:

OPTアニメーション(dco)
-----------------------------

   dcoファイルを選択し、構造最適化計算のトラジェクトリをアニメーション表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
.. _addon_dcdftbmd_animation:

アニメーション(traject)
-----------------------------

   dciファイルとtrajectファイルを選択し、MD計算のトラジェクトリをアニメーション表示します。
   
   メインウィンドウのファイル名は変化しません。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
   Animationウィンドウの :menuselection:`Tools --> Mean Square Displacement/Diffusion Constant` と :menuselection:`Tools --> Radial Distribution Function` から平均二乗変位、自己拡散係数、動径分布関数を計算することができます。詳細は :ref:`md_gromacs_msd` または :ref:`md_gromacs_rdf` を参照してください。
   
.. _addon_dcdftbmd_energy:

エネルギー変化
------------------------------

   ログファイルを選択し、エネルギー、温度などの各種熱力学量のグラフを表示します。
   
   サブウィンドウの操作方法は :ref:`energyplot_top` を参照してください。

