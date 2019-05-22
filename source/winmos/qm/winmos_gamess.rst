.. include:: ../../common.rst

.. _qm_gamess_top:

:menuselection:`QM --> GAMESS` メニュー
============================================

   GAMESSに関するメニューです。
   
   GAMESSを利用するためには別途GAMESSをインストールする必要があります。
   GAMESSをインストールする方法は :ref:`install_install` に記載しています。

キーワード設定
------------------------

   GAMESSの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`qm_gamess_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`Save as Default` ボタンで現在の状態をデフォルトの状態として保存します。
   :menuselection:`Save as Default --> Clear Default Settings` で保存されてデフォルトの状態を出荷時の状態に戻します。

   Easy Setup
      簡易設定画面を表示します。
   NCPUS
      並列数を指定します。
   NODES (FireFly)
      計算に使用するノードのディレクトリを指定します。
   Basicタブ
      $CONTRL
         ICHARG
            電荷を指定します。
         MULT
            多重度を指定します。
         SCFTYP
            SCF計算方法を指定します。
         RUNTYP
            計算目的を選択します。
         COORD
            分子構造データの形式を指定します。
         MAXIT
            SCF計算の反復回数の上限を指定します。
         NZVAR
            内部座標の数を指定します。
         EXETYP
            実際に計算を行うかどうかの指定で、入力をチェックするときはCHECKを指定します。
         NOSYM
            計算の際に対称性を利用するかどうかを指定します。
         NPRINT
            出力の詳細度を指定します。
         LOCAL
            軌道の局在化の方法を指定します。（デフォルト 0 = しない） 
         ECP 
            Pseudopotentialを指定します。
         DFTTYP
            密度汎関数法の基底関数系を指定します。
         TDDFT
            時間依存(Time-dependent)DFT法を用いて励起状態のエネルギー計算を行うかどうかを指定します
         Others
            その他のキーワードを記入します。
      $BASIS
         Basis Set
            基底関数系を選択します。GBASIS、NGAUSS、NDFUNC、NFFUNC、DIFFSP、DIFFSに反映されます。
         GBASIS
            基底関数系の基本セット
         NGAUSS
            Gaussian関数の数
         EXTFIL
            外部ファイルから基底関数を読み込みます。
         NDFUNC
            加えるd-分極関数の数
         NFFUNC
            加えるｆ-分極関数の数
         NPFUNC
            加えるp-分極関数の数
         DIFFSP
            sp-diffuse関数を加えるかどうかの指定
         DIFFS
            s-diffuse関数を加えるかどうかの指定
         Others
            その他のキーワードを記入します。
   Advanceタブ
      $SYSTEM
         TIMLIM
            計算の制限時間 （デフォルト 600分） 
         MWORDS
            メモリー使用量 （デフォルト 1MW） 
         Others
            その他のキーワードを記入します。
      $SCF
         DIRSCF
            ダイレクトSCF計算法を使用するかどうかを指定します。
         DAMP
            Fock 行列の作成に際して、Davidson damping を利用します。
         CONV
            SCF収束判定の際の密度変化の閾値を指定します。（デフォルト 1.0D-05） 
         Others
            その他のキーワードを記入します。
      $GUESS
         GUESS
            初期波動関数の求め方を指定します。
         Others
            その他のキーワードを記入します。
      $STATPT
         NSTEP
            構造最適化のステップ数の上限を指定します。（デフォルト 20） 
         OPTTOL
            エネルギー勾配の閾値を指定します。（デフォルト 0.0001 Hartree/Bohr） 
         METHOD
            構造最適化のアルゴリズムを指定します。
         HESS
            Hessian 行列の求め方を指定します。
         Others
            その他のキーワードを記入します。
   Z-Matrix
      Z-Matrixの設定を行います。
   DFT
      $DFT
         LC
            長距離補正を行うかどうかを指定します。（BLYP, BOP及び BVWNの場合のみ）
         MU
            長距離補正のパラメータの値を指定します。（デフォルト 0.33） 
         Others
            その他のキーワードを記入します。
      $TDDFT
         NSTATE
            求める状態の数（基底状態をのぞく)を指定します。
         NRAD
            密度汎関数の導関数を求める際の動径方向の格子点の数を指定します。（デフォルト 48） 
         NLEB
            角度方向の格子点の数を指定します。（デフォルト 110） 
         Others
            その他のキーワードを記入します。

キーワード読み込み
------------------------
   既存のGAMESSの入力ファイルから、キーワード（計算条件）のみを読み込みます。

punchファイルから読み込み
---------------------------------

$VEC from punch
^^^^^^^^^^^^^^^^^^
   $VECをpunchファイルから読み込みます。

$HESS from punch
^^^^^^^^^^^^^^^^^^
   $HESSをpunchファイルから読み込みます。

.. _qm_gamess_start:

(1) GAMESS実行, (2) GAMESS実行
----------------------------------------------------

   メインウィンドウでGAMESSの入力ファイルが開かれている場合は、そのファイルを使ってGAMESSを実行します。
   開かれていない場合は、GAMESSの入力ファイルを保存した上でGAMESSを実行します。
   
   入力ファイルを保存する際に、 :ref:`file_coordinateformat` の選択肢に応じて座標の出力フォーマットが変化します。
   
   :guilabel:`(1) GAMESS実行` , :guilabel:`(2) GAMESS実行` の違いは、起動するGAMESSのプログラムパスです。
   プログラムパスは、 :menuselection:`ツール --> 環境設定 --> プログラムパス` で変更することができます。
   :guilabel:`(1) GAMESS実行` , :guilabel:`(2) GAMESS実行` には、Fireflyやバージョンの異なるGAMESSなどを設定して、両者を場面に応じて使い分けながら使用することを想定しています。
   
   外部基底関数ファイルを使用するには( :command:`$BASIS EXTFIL=.T.` )、 :file:`basis.lib` をGAMESSのEXEファイルと同じディレクトリに置きます。
   WinGAMESSの場合は、 :file:`runscript.csh` の中で :command:`setenv EXTBAS ../basis.lib` と指定します。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.inp` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | outファイル
             | :file:`water.out`
           - 計算のログファイルです。
         * - | batファイル
             | :file:`water.inp.bat`
           - GAMESSを実行するためのバッチファイルです。
         * - | punファイル
             | :file:`water.pun`
           - | 詳細な結果解析を行うためのpunchファイルです。

   ジョブは :ref:`winmosjm_top` を通じて実行されます。

ログを表示 (out,log)
---------------------

   outファイルをテキストエディタで開きます。

アニメーション
-----------------------------------------------------

   outファイルの情報から構造最適化、スキャン、IRC計算等のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
分子軌道, UV-Vis, 電荷, NMR
-----------------------------------------------------

   outファイルの情報から分子軌道, UV-Vis, 電荷, NMRの情報を取得し表示します。
   
   読み込まれた電荷の情報は :menuselection:`表示 --> ラベル/電荷 --> Mulliken電荷` などを選択することで分子表示エリアに表示することができます。

   サブウィンドウの操作方法は :ref:`mo_top` , :ref:`cube_top` , :ref:`uvvis_top` , :ref:`nmr_top` を参照してください。

IR(Hessian)/ラマンスペクトル
-----------------------------------------------------

   outファイルを選択し、振動スペクトル（IRまたはラマンスペクトル）を表示します。
   
   :command:`RUNTYP=HESSIAN` のoutファイルからIRスペクトルを読み込ませた後、続けて本メニューで :command:`RUNTYP=RAMAN` のoutラマンスペクトルを読み込ませると、両方のスペクトルを同時にサブウィンドウに表示することができます。
   
   サブウィンドウの操作方法は :ref:`ir_top` を参照してください。

.. _qm_gamess_resp:

RESP電荷
---------------------------
   RESP法に基づく点電荷をpunchファイルから算出します。
   
   読み込ませるpunchファイルは、 :menuselection:`キーワード設定 --> Easy Setup` において :guilabel:`RESP/ESP` の設定を選んで実行した計算から出力されている必要があります。
   スピン多重度は1という前提で処理されます。
   内部では、punchファイルの情報からAntechamberで読み込めるファイルを作成し、Antechamberを用いてRESP電荷を算出しています。
   
   .. include:: ../../cygwinwm_required.rst

PDB
--------------

PDB編集
^^^^^^^^^^^^^^
   PDBデータの残基情報等を残したまま、原子削除等の編集を行います。

FMOutil
^^^^^^^^^^^^^
   FMOutilを起動します。

PIO解析
--------------
   Paired Interacting Orbitals解析を実行します。
   詳細は :ref:`pio_top` を参照してください。

