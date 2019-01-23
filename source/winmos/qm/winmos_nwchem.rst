.. include:: ../../common.rst

.. _qm_nwchem_top:

:menuselection:`QM --> NWChem` メニュー
============================================

   NWChemに関するメニューです。
   
   NWChemを利用するためには別途NWChemをインストールする必要があります。
   NWChemをインストールする方法は :ref:`install_install` に記載しています。

キーワード設定
------------------------

   NWChemの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`qm_nwchem_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。

   Easy Setup
      簡易設定画面を表示します。
   Use MPI
      チェックを入れるとMPIを用います。
      並列数はチェックボックスの横に入力します。
   Basicタブ
      Title
         タイトルを指定します。
      Basis
         基底関数系を指定します。
         cartesian/sphericalを選択します。
         一部原子の例外をExceptionで指定します。
      Task
         計算手法(theory)と計算目的(operation)を指定します。
      Charge
         電荷を指定します。
      DFT
         Multiplicity
            DFTのスピン多重度を指定します。
         Exchange
            DFTの交換関数を指定します。
         Correlation
            DFTの相関関数を指定します。
      SCF
         Multiplicity
            SCFの多重度を指定します。
         Wave Function
            SCFの計算理論を指定します。
      Property
         Mulliken
            Mulliken電荷を出力するか選択します。
         Shielding
            NMR計算を行うか選択します。
         Dipole
            ダイポールモーメントを出力するか選択します。
   NEB/String タブ
      TaskのOperationにnebかstringを指定したときに有効になります。
      
      NBeads
         ビーズの数を指定します。
      KBeads
         NEBのバネ定数を指定します。
      MaxIter
         最適化の最大繰り返し数を指定します。
      StepSize
         最適化のステップサイズを指定します。
      NHist
         準ニュートン法で使用するヒストリーの数を指定します。
      Freeze1
         ZTSで最初のビーズを固定するか設定します。
      FreezeN
         ZTSで最後のビーズを固定するか設定します。
      Convergence
         収束条件をloose/default/tightから選びます。
      XYZ_Path
         初期パスのファイルを指定します。計算のリスタートなどで使用します。      Print_Shift
         指定したステップ毎にパスを出力します。
      EndGeom
         最後のビーズの座標を指定します。
         Loadボタンでファイルを指定して読み込めます。
         Winmostarで読み込めるフォーマットをXYZ形式で読み込みます。
         また、Editボタンで編集することができます。
   Advance タブ
      Memory
         メモリ使用量を指定します。
      Set tolguess
         initial guessの精度を指定します。
      ECP
         ECPのポテンシャルを指定します。
      Geometry
         noautoz
            内部座標の変換を行わないように設定します。
      Other Settings
         その他の入力要素を記述します。

キーワード読み込み
------------------------
   既存のNWChemの入力ファイルから、キーワード（計算条件）のみを読み込みます。

.. _qm_nwchem_start:

実行
----------------------------------------------------

   メインウィンドウでNWChemの入力ファイルが開かれている場合は、そのファイルを使ってNWChemを実行します。
   開かれていない場合は、NWChemの入力ファイルを保存した上でNWChemを実行します。
   
   入力ファイルを保存する際に、 :ref:`file_coordinateformat` の選択肢に応じて座標の出力フォーマットが変化します。
   
   NWChemのプログラムパスは、 :menuselection:`ツール --> 環境設定 --> プログラムパス` で変更することができます。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.nw` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | outファイル
             | :file:`water.out`
           - 計算のログファイルです。
         * - | movecsファイル
             | :file:`water.movecs`
           - 計算の詳細情報をまとめたファイルです。
         * - | batファイル
             | :file:`water.bat`
           - NWChemを実行するためのバッチファイルです。
         * - | 作業ディレクトリ
             | :file:`water.nw_temp\\`
           - | 作業ディレクトリです。

ログを表示 (out)
---------------------

   outファイルをテキストエディタで開きます。

アニメーション (構造最適化)
-----------------------------------------------------

   outファイルの情報から構造最適化等のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
アニメーション (NEB/String)
-----------------------------------------------------

   xyzファイルの情報からNEB, String計算のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。
   
分子軌道, UV-Vis, 電荷, NMR
-----------------------------------------------------

   outファイルの情報から分子軌道, UV-Vis, 電荷, NMRの情報を取得し表示します。
   
   読み込まれた電荷の情報は :menuselection:`表示 --> ラベル/電荷 --> Mulliken電荷` などを選択することで分子表示エリアに表示することができます。

   サブウィンドウの操作方法は :ref:`mo_top` , :ref:`cube_top` , :ref:`uvvis_top` , :ref:`nmr_top` を参照してください。

IR/ラマンスペクトル
-----------------------------------------------------

   outファイルを選択し、振動スペクトル（IRまたはラマンスペクトル）を表示します。
   
   :command:`RUNTYP=HESSIAN` のoutファイルからIRスペクトルを読み込ませた後、続けて本メニューで :command:`RUNTYP=RAMAN` のoutラマンスペクトルを読み込ませると、両方のスペクトルを同時にサブウィンドウに表示することができます。
   
   サブウィンドウの操作方法は :ref:`ir_top` を参照してください。

