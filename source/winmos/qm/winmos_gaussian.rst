.. include:: ../../common.rst

.. _qm_gaussian_top:

:menuselection:`QM --> Gaussian` メニュー
============================================

   Gaussianに関するメニューです。
   
   Gaussianを利用するためには別途Gaussianをインストールする必要があります。

キーワード設定
------------------------

   Gaussianの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`qm_gaussian_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save as Default` ボタンで現在の状態をデフォルトの状態として保存します。
   :menuselection:`Save as Default --> Clear Default Settings` で保存されてデフォルトの状態を出荷時の状態に戻します。

   Easy Setup
      簡易設定画面を表示します。
   %nprocshared
      並列数を指定します。
   Link0
      #nproc=n
         プロセッサ数を指定します。
      #Chk=file
         チェックポイントファイルを指定します。
      #Mem=n
         動的メモリ量をワード単位で指定します。KB, MB, GB, KW, MB, GWの単位を指定することもできます。（デフォルト：6MW）
   Comment
      コメントを記述します。

      #
         ルートセクションの始まりを指定します。
      #N
         標準レベルで出力を行います。（デフォルト）
      #P
         詳細な出力を行います。各リンクの開始時と終了時における実行時間などや，SCFの収束に関する情報が出力されます。
      #T
         重要な情報と結果のみを出力する簡潔な出力を指定します。
   Hamiltonian
      使用するハミルトニアンを指定します。
      
      hf
         Hartree-Fock計算を行います。明示的に指定されない限り，一重項にはRHFを，それより高次の多重度ではUHFを用います。
      rhf
         Restricted Hartree-Fock計算を行います。
      uhf
         Unrestricted Hartree-Fock計算を行います。
      am1
         AM1ハミルトニアン を用いた半経験的計算を行います。
      pm3
         PM3ハミルトニアン を用いた半経験的計算を行います。
      pm3mm
         HCON結合に関する分子力学補正が含まれたPM3ハミルトニアン を用いた半経験的計算を行います。
      b3lyp
         Becke3汎関数にLYP非局所相関汎関数を組み合わせた密度汎関数法計算を行います。
      ub3lyp
         b3lypのUnrestricted版です。
      mp2
         Hartree-Fock計算の後に２次までのMoller-Plesset相関エネルギー補正を行います。
      ump2
         mp2のUnrestricted版です。
      mp4
         Hartree-Fock計算の後に４次までのMoller-Plesset相関エネルギー補正を行います。
      ump4
         mp4のUnrestricted版です。
      cis
         一電子励起CIを用いて励起状態を計算します。
      cisd
         二電子励起CIを用いて励起状態を計算します。（CIと同義）
      indo
         INDOハミルトニアンを用いた半経験的計算を行います。
      cndo
         CNDOハミルトニアンを用いた半経験的計算を行います。
      gvb
         GVB(General Valence Bond; 一般化原子価結合)計算を行います。
      oniom
         ONIOM計算を行います。
   Basis
      基底関数セットを指定します。
   Pop
      分子軌道の出力や電子密度解析及び原子の電荷分布などを制御します。
      
      none
         分子軌道を出力せず，電子密度解析も行いません。
      minimal
         原子の電荷と軌道エネルギーを出力します。
      regular
         占有軌道と仮想軌道を5つずつ出力します。密度行列とMulliken電子密度解析も出力します。
      full
         すべての占有軌道と仮想軌道を出力します。密度行列とMulliken電子密度解析も出力します。
   Calc. Type 
      EF (Eigen Vector Following)法による構造最適化計算を行います。
      
      opt
         構造最適化を実行します。
      opt=z-matrix
         内部座標で構造最適化を行います。
      opt=modredundant
         redundant内部座標の定義（探索や束縛情報を含む）を追加・削除・修正ます。構造指定の後に入力セクションが必要です。
      opt=(ts,noeigentest,calcfc)
         遷移状態に対する最適化を行います。曲率のテストを行いません。初回に力の定数を計算します
      irc
         反応経路を追跡します
      irc=(maxpoint=20, stepsize=20t, calcfc)
         反応経路を追跡します。経路上の点の個数とステップサイズを指定します。初回に力の定数を計算します
   MaxCyc
      最適化ステップの最大数を設定します。
   Freq
      freq
         力の定数と振動数の計算を行います。
      freq=raman
         IR強度に加えてラマン強度も計算します。
      freq=vcd
         通常の振動数解析に加えて振動円二色性(VCD)強度を計算します 
      freq=noraman
         Hartree-Fock解析的振動数計算でラマン強度を求めません。
      freq=nraman
         電場に関する解析的双極子導関数を数値的に微分することによって分極率導関数を求めます。
      freq=nnraman
         核座標に関する解析的分極率を数値微分して分極率導関数を求めます。
   Charge
      電荷の値を指定します。
   Multiplicity
      多重度を指定します。
   Td
      td
         時間依存(time-dependent)Hartree-FockまたはDFT法を用いて励起状態のエネルギー計算を行います
      td=(nstates=n)
         n個の状態に対して時間依存計算法を用いて励起状態のエネルギーを求めます。（デフォルト 3） 
   gfinput
      基底関数系を入力フォーマットと同様な形式で出力します。
   gfprint
      基底関数系を表形式で出力します。
   nosymm
      座標の再配向を行わず，Z-matrix 配向ですべての計算を実行します。
   guess=read
      チェックポイントファイルから初期波動関数を読み込みます
   geom=check
      分子指定セクションをチェックポイントファイルから取り出します。
   Others
      その他のキーワードを記入します。

キーワード読み込み
------------------------
   既存のGaussianの入力ファイルから、キーワード（計算条件）のみを読み込みます。

.. _qm_gaussian_start:

実行
----------------------------------------------------

   メインウィンドウでGaussianの入力ファイルが開かれている場合は、そのファイルを使ってGaussianを実行します。
   開かれていない場合は、Gaussianの入力ファイルを保存した上でGaussianを実行します。
   
   入力ファイルを保存する際に、 :ref:`file_coordinateformat` の選択肢（ :guilabel:`Z-Matrix` または :guilabel:`XYZ` ）および :ref:`座標表示エリア <gui_main>` の :guilabel:`Z-Matrix` / :guilabel:`XYZ` タブの選択に応じて座標の出力フォーマットが変化します。
   
   Gaussianのプログラムパスは、 :menuselection:`ツール --> 環境設定 --> プログラムパス` で変更することができます。
      
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.gjf` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | logファイル
             | :file:`water.log`
           - 計算のログファイルです。
         * - | batファイル
             | :file:`water.gjf.bat`
           - Gaussianを実行するためのバッチファイルです。
         * - | 作業ディレクトリ
             | :file:`water_gau_tmp\\`
           - | 作業ディレクトリです。

   ジョブは :ref:`winmosjm_top` を通じて実行されます。

ログを表示 (log/out)
---------------------

   logファイルをテキストエディタで開きます。

アニメーション
-----------------------------------------------------

構造最適化
^^^^^^^^^^^^^^^^^^^^

   logファイルの情報から構造最適化計算のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
IRC/modred
^^^^^^^^^^^^^^^^^^^^

   logファイルの情報からIRC計算のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
結果解析
-----------------------------------------------------

分子軌道, UV-Vis, 電荷, NMR
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   logファイルの情報から分子軌道, UV-Vis, 電荷, NMRの情報を取得し表示します。
   
   読み込まれた電荷の情報は :menuselection:`表示 --> ラベル/電荷 --> Mulliken電荷` などを選択することで分子表示エリアに表示することができます。

   サブウィンドウの操作方法は :ref:`mo_top` , :ref:`cube_top` , :ref:`uvvis_top` , :ref:`nmr_top` を参照してください。

IR/ラマンスペクトル
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   logファイルを選択し、振動スペクトル（IRまたはラマンスペクトル）を表示します。
   
   サブウィンドウの操作方法は :ref:`ir_top` を参照してください。

Archive
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   Gaussianの出力のアーカイブ部分の高精度座標を読み込みます。

.. _qm_gamess_resp:

RESP電荷
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   RESP法に基づく点電荷をespファイルから算出します。
   
   読み込ませるespファイルは、 :menuselection:`キーワード設定 --> Easy Setup` において :guilabel:`RESP/ESP` の設定を選んで実行した計算から出力されている必要があります。
   スピン多重度は1という前提で処理されます。
   内部では、Antechamberを用いてRESP電荷を算出しています。
   
   .. include:: ../../cygwinwm_required.rst

FormChk
----------
   G09W,G03WユーティリティのFormchkを起動し、.chkファイルから書式付の.fchファイルを作成し、表示します。

.. _gaussian_fchk:

Fchkファイル読み込み (Cubegen)
----------------------------------
   G09W,G03WユーティリティのCubegenを起動し、.fchファイルを読込んでCubeファイルを作成します。
   Cubegenがない場合は、Winmostar内臓のOpenCubegenを使います。
   
   サブウィンドウの操作方法は :ref:`cube_top` と以下を参考にしてください。
   
   Property
      MO 
         分子軌道
      Density 
         電子密度
      ESP 
         ESP
      Spin
         スピン密度（α - β）
      Alpha 
         αスピン密度
      Beta 
         βスピン密度
      Current Density
         Current Density
      Shielding Density
         Shielding Density
   Type
      Density キーワードのオプションを指定します。（HF, MP2, CI, QCI）
   Cube
      Cubeファイルを出力します。   
   
   
Cubeファイル読み込み
-----------------------
   Cube形式ファイルを読込んで表示します。
   
   GAMESSのpunファイルの場合は、Cubeファイルに変換します。
   
   サブウィンドウの操作方法は :ref:`cube_top` と以下を参考にしてください。
   
   cube Manipulation
      :guilabel:`File 1` と :guilabel:`File 2` に指定したcubeファイルに対して操作を実行します。
      
      map
         上の欄のデータに下の欄のデータをマッピングします。（例　DensityにESPをマッピングする）
      subtract
         2つのcubeファイルのデータの差を対象とします。
      sub 2
         2つのcubeファイルのデータの自乗の差を対象とします。
      add
         2つのcubeファイルの和を対象とします。
      Cube
         Mapで対象としたcubeファイルの演算結果を出力し表示の対象とします。
   Cubegen
      Cubegenを起動し、fchファイルを読込んでCubeファイルを作成します。詳細は :ref:`gaussian_fchk` を参照してください。

PIO解析
--------------
   Paired Interacting Orbitals解析を実行します。
   詳細は :ref:`pio_top` を参照してください。

