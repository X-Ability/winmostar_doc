.. include:: ../../common.rst

.. _solid_openmx_top:

:menuselection:`固体 --> OpenMX` メニュー
=====================================================

   OpenMXに関するメニューです。
      
.. _solid_openmx_keywords:

キーワード設定
------------------------

   OpenMXの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウィンドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   :guilabel:`Run` をクリックしたときの挙動は :ref:`solid_openmx_start` を参照してください。
   
   :guilabel:`Reset` ボタンでデフォルトの状態に戻ります。
   :guilabel:`OK` ボタンで設定内容を反映してメイン画面に戻ります。
   :guilabel:`Cancel` ボタンで何もせずにWindowを閉じます。
   
   本機能を呼び出すときに、メインウィンドウに表示された構造がプリミティブセルに変化できる場合は、自動で :ref:`solid_convertcell` が実行されます。

   Preset
      設定のプリセットを選択します。

   Use MPI
      OpenMXの実行時にMPIを用いて並列計算を実行するか指定します。横の欄にはMPIプロセス数を入力します。

   Use OpenMP
      OpenMXの実行時にOpenMPを用いて並列計算を実行するか指定します。横の欄にはOpenMPスレッド数を入力します。

   SCFタブ
      XcType
         交換相関ポテンシャルを指定します。「LDA」、「LSDA-CA」、「LSDA-PW」、「GGA-PBE」が指定できます。
         ここで「LSDA-CA」はCeperley-Alderの局所スピン密度関数、
         「LSDA-PW」は、そのGGA形式において密度勾配をゼロとしたPerdew-Wang局所スピン密度関数です。
         「GGA-PBE」はPerdewらが提案するGGA汎関数です。 

      SpinPolarization
         電子系の非スピン分極あるいはスピン分極を指定します。 スピン分極の計算を行う場合は「ON」を指定し、非スピン分極の計算を行う場合は「OFF」を指定します。
         前述の2つのオプションの他、ノンコリニアDFT計算を行う場合には「NC」というオプションを指定して下さい。

      EigenvalueSolver
         固有値問題の計算手法を「scf.EigenvalueSolver」で指定します。O(N)分割統治法は「DC」、O(N)クリロフ部分空間法は「Krylov」、 数値厳密な低次スケーリング法は「ON2」、クラスタ計算は「Cluster」、バンド計算は「Band」を指定します。 

      Kgrid
         OpenMXでは等間隔メッシュによりk空間の第1ブリルアンゾーンを離散します。 
         その際、「scf.EigenvalueSolver」キーワードにて「Band」を指定する場合、k空間の第1ブリルアンゾーンを離散化するための 格子の数（n1, n2, n3）を「scf.Kgrid」キーワードで指定しなければなりません。 
         k空間の逆格子ベクトルを離散化するために「n1 n2 n3」のように指定して下さい。 
         
      ElectronicTemperature
         電子温度（K）を設定します。

      energycutoff
         積分グリッド間隔を定義するカットオフエネルギーを指定します。
         この積分グリッドは差電子クーロンポテンシャルと交換相関ポテンシャルに対する行列要素の計算、および高速フーリエ変換（FFT）を用いたPoisson方程式の 解法のために使用されます。

      maxIter
         SCFの最大反復回数を設定します。 SCF反復ループは、収束条件が満たされない場合でもこのキーワードで指定した回数で終了します。

      ProExpn.VNA
         中性原子ポテンシャルVNAを射影演算子で展開する場合には、「ON」に設定し、 それ以外の場合は「OFF」を設定して下さい。
         「OFF」と設定されている場合、VNAポテンシャルの行列要素は実空間の離散グリッドを用いて計算されます。 

      Mixing.Type
         SCF計算の次の反復ステップに入力される電子密度(もしくは密度行列)を生成するための電子密度混合法を指定します。
         単純混合法（「Simple」）、Guaranteed-Reduction Pulay法（「GR-Pulay」）、RMM-DIIS法（「RM-DIIS」）、 Kerker法（「Kerker」）、あるいはRMM-DIISK法（「RMM-DIISK」）、 RMM-DIISH法（「RM-DIISH」）のいずれかを指定することができます。
         OpenMXの単純混合法は収束の速度を上げるために収束履歴を参照するように改良されています。 
         「GR-Pulay」、 「RMM- DIIS」、 「Kerker」あるいは「RMM-DIISK」を使用する際には、以下の点に注意することで SCF計算の高速化が可能です。
         * Pulay法に準拠する方法で混合を開始する前にある程度の収束が必要です。そのため、やや大きめの「scf.Mixing.StartPulay」の値を使用します。 「scf.Mixing.StartPulay」の適切な値は10～30です。
         * 金属系の場合は高い「scf.ElectronicTemperature」の値を使用します。 「scf.ElectronicTemperature」が小さいと数値的に不安定な挙動がよく見られます。
         * 「scf.Mixing.History」の値を大きくします。ほとんどの場合、「scf.Mixing.History=30」が妥当な値です。
         また前述した混合法のうち、一番ロバスト性が高いのは「RMM-DIISK」です。 

      Init.Mixing.Weight
         単純法、GR-Pulay法, RMM-DIIS法、Kerker法、RMM-DIISK法およびRMM-DIISH法で使用する初期の混合比を指定します。 有効な範囲は0<Init.Mixing.Weight<1です。

      Min.Mixing.Weight
         単純およびKerker混合法における混合比の下限を指定します。

      Max.Mixing.Weight
         単純およびKerker混合法における混合比の上限を指定します。

      Mixing.History
         GR-Pulay法、 RMM-DIIS法、 Kerker法、RMM- DIISK法及びRMM-DIISH法では、 SCFの次の反復ステップにおける入力電子密度（ハミルトニアン）を、過去のSCF反復の電子密度（ハミルトニアン）に基づき推定します。 「scf.Mixing.History」キーワードは、この推定に使用する過去のSCF反復ステップ数を指定します。 
         例えば、「Mixing.History」が3に設定されている場合、6回目のSCF反復では過去の第5、4、3ステップの電子密度が考慮されます。 

      Mixing.StartPulay
         GR-Pulay法、RMM-DIIS法、Kerker法、RMM-DIISK法およびRMM-DIISH法を開始するSCFステップを指定します。 これらの方法を開始するまでのSCFステップでは単純あるいはKerker混合法が使用されます。

      criterion
         SCF計算の収束条件を指定します（Hartree単位）。 SCF反復はdUele < scf.criterionという条件が満たされると終了します。 
         ここでdUeleとは、現在のSCF反復とひとつ前の反復とのバンドエネルギーの絶対差です。 デフォルト値は1.0e-6（Hartree単位）です。 
      
   SCF.Hubbardタブ
      Hubbard.U
         LDA+UおよびGGA+U計算の場合、「ON」に設定します。
         
      Hubbard.Occupation
         LDA+U法では、「onsite」、「full」および「dual」の3つの占有数演算子から選択することができます。
         
   OrderNタブ
      HoppingRanges
         各原子を中心とする球の半径(Å)を定義します。DC法およびO(N)クリロフ部分空間法では、この球内に含まれる原子を選択することで切り取られたクラスタが構成されます。 

      KrylovH.order
         切り取られた各クラスタのハミルトニアンに対し、クリロフ部分空間の次元を指定します。 
         
      KrylovS.order
         後述のキーワードで「Exact.Inverse.S=off」に設定した場合、重なり積分の逆行列は クリロフ部分空間法を用いて近似されます。 この時、切り取られた各クラスタに対する重なり行列のクリロフ部分空間法の次元を指定します。
         
      Exact.Inverse.S
         「on」に設定すると、切り取られた各クラスタの重なり行列の逆行列は厳密に評価されます。 「off」に設定する場合は前述のキーワード「KrylovS.order」の項を参照して下さい。 
         
      Recalc.Buffer
         「on」に設定すると、バッファ行列は各SCF反復毎に再計算されます。 「off」の場合にはバッファ行列は初回のSCFステップで計算され、その後のSCF反復では固定されます。

      Expand.Core
         「on」に設定すると、コア領域は半径 1.2× r\ :sub:`min`\の球の中にある 原子から構成されます。ここでr\ :sub:`min`\は、中心原子と最隣接原子間の距離です。 
         このコア領域はクリロフ部分空間を生成するときの第1ステップで使用されるベクトル群を定義します。 
         「off」の場合、中心の原子がコア領域と見なされます。

   MDタブ
      Type
         分子動力学計算あるいは構造最適化のタイプを指定します。 現在使用できるオプションは以下の通りです。 
         MD無し（「Nomd」）、原子座標の構造最適化（「Opt」）、ユニットセルの自由度も含めた構造最適化（「RFC5」）、NVEアンサンブルMD（「NVE」）、速度スケーリング法によるNVTアンサンブルMD（「NVT_VS」）、Nose-Hoover法によるNVTアンサンブルMD（「NVT_NH」）
         
      maxIter
         MD計算や構造最適化計算における最大の反復回数を指定します。

      TimeStep
         時間ステップ（fs）を指定します。 

      Opt.criterion
         「Type」キーワードによって構造最適化の方法を選択している場合には、
         「Opt.criterion」キーワードでその収束条件（Hartree/Bohr） を設定します。
         原子にかかる力の最大絶対値が、ここで指定した値より小さくなった場合に、構造最適化は終了します。

      Opt.DIIS.History
         「DIIS」、「EF」、「RF」による構造最適化を行う場合、「Opt.DIIS.History」キーワードは構造最適化のために参照する過去のステップ数を指定します。

      Opt.StartDIIS
         「DIIS」、「EF」、「RF」による構造最適化を開始するステップを「Opt.StartDIIS」キーワードで指定します。
         DIISタイプの構造最適化を開始する以前のステップでは最急降下法が使用されます。

      NH.Mass.HeatBath
         「Type」キーワードによって「NVT_NH」を選択した場合、このキーワードで熱浴の質量を設定します。
         単位は統一原子質量単位です（炭素原子の主同位体の質量を12.0とする単位）。 

      TempControl
         MDおよびNVTアンサンブルにおける原子運動の温度を指定します。 「NVT_VS」を選択した場合、原子運動の温度を下記の例のように制御できます。::

            <MD.TempControl
              3
              100   2  1000.0  0.0  
              400  10   700.0  0.4  
              700  40   500.0  0.7  
            MD.TempControl>

         記述は「\<MD.TempControl」で開始し、「MD.TempControl>」で終わります。最初の数字「3」は、続く温度指定の行数を指します。 例では3行あります。後続する行の第1列はMDステップ数を指し、第2列は速度スケーリングを行うMDステップの間隔を指定します。 例では、100ステップ目までは2ステップ毎に、100～400ステップ間は10ステップ毎に、400～700ステップ間は40ステップ毎に速度スケーリングを行います。 第3、4列はそれぞれ温度（K）とスケーリングパラメータαを指定します。 詳細は「分子動力学」の章を参照して下さい。 一方、NVT_NHの場合、以下の記述で原子運動の温度を制御できます。::

            <MD.TempControl
              4
              1    1000.0
              100  1000.0
              400   700.0
              700   600.0
            MD.TempControl>

         記述は「<MD.TempControl」で開始し、「MD.TempControl>」で終わります。 最初の数字「4」は、続く温度指定の行数を指します。 この例では4行あります。 後続する行の第1、2列は、それぞれMDステップ数と原子運動の温度を指定します。 指定されたMDステップ間の温度は線形補完されます。 

   Fileタブ
      level.of.stdout
         標準出力への出力情報のレベルを指定します。 
         「0」を指定した場合、最小限の情報が出力されます。 
         「1」の場合、最小限の出力に加えて追加の情報が出力されます。 
         「2」は開発者向けのオプションです。

      level.of.fileout
         出力ファイルへの出力情報のレベルを指定します。
         「0」を指定した場合、最小限の情報が出力されます（Gaussian cubeおよびグリッドファイルの出力無し）。
         「1」は標準的な出力情報レベルです。
         「2」の場合、標準の出力に加えて追加の情報が出力されます。

   Bands/DOSタブ
      Band
         dispersion
             バンド分散を評価するには「ON」に設定します。

      DOS
         fileout
             全状態密度（DOS）および射影した部分状態密度（PDOS）を評価する場合は「ON」に設定します。 

         Erange
             DOS計算におけるエネルギー範囲（下限値と上限値）を半角スペース区切りで指定します。

         Kgrid
             DOS計算を行う上で、第1ブリルアンゾーンを離散化するために(n1, n2, n3)の格子点を指定します。 

   MOタブ
      fileout
         分子軌道をファイルに出力したい場合は、「ON」を指定します。

      num_HOMOs
         出力する最高被占分子軌道（HOMO）の数を指定します。

      num_LUMOs
         出力する最低空分子軌道（LUMO）の数を指定します。 

      Nkpoint
         「fileout」を「ON」およびSCFタブの「EigenvalueSolver」を「Band」を設定している場合、
         「Nkpoint」キーワードでMOを出力するk点の数を指定します。 

   Speciesタブ

      Atom
         原子種の名前を指定します。

      Basis
         プリミティブ軌道の数および縮約された軌道の数を指定します。 

      PAO
         擬原子基底軌道の拡張子無しのファイル名を指定します。

      VPS
         擬ポテンシャルの拡張無しファイル名を指定します。 

   Atoms.Coord.Unit
      原子座標の単位を指定します。

.. _solid_openmx_start:

実行
------------------------

   OpenMXを実行します。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`dia.mxin` 、System.Nameがwmのときのファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | batファイル
             | :file:`dia.bat`
           - OpenMXを実行するためのバッチファイルです。CygwinWM経由でdia.shを実行します。
         * - | shファイル
             | :file:`dia.sh`
           - OpenMXを実行するためのシェルスクリプトファイルです。
         * - | logファイル
             | :file:`dia.log`
           - dia.shのログファイルです。
         * - | mxoutファイル
             | :file:`dia.mxout`
           - 計算の出力ファイルです。作業ディレクトリ内のwm.outのコピーです。
         * - | 作業ディレクトリ
             | :file:`dia_mx_data\\`
           - | 作業ディレクトリです。
           
   作業ディレクトリには以下のファイルが生成されます。
   ここでは主要なファイルのみ示しています。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1
         
         * - 種類
           - 説明
         * - | :file:`tmp.dat`
           - | 計算条件を指定するファイルです。dia.mxinのコピーです。
         * - | :file:`tmp.std`
           - | OpenMXの標準出力をリダイレクトしたファイルです。
         * - | :file:`wm.out`
           - | SCF計算の履歴、構造最適化の履歴、Mulliken電荷、全エネルギー、および双極子モーメントが保存されます。
         * - | :file:`wm.xyz`
           - | MDまたは構造最適化により得られた最終的な幾何学的構造が保存されます。
         * - | :file:`wm.bulk.xyz`
           - | 「scf.EigenvalueSolver=Band」の場合、コピーされたセルの原子を含む原子座標が出力されます。
         * - | :file:`wm.md`
           - | 各MDステップごとの原子座標が保存されます。
         * - | :file:`wm.md2`
           - | 最終MDステップにおける原子座標が保存されます。指定した原子種記号を用いて原子が指定されています。
         * - | :file:`wm.ene`
           - | MDステップごとの計算値が保存されます。保存されている各数値の内容は「iterout.c」 ルーチン中で確認できます。
         * - | :file:`wm.Band`
           - | バンド分散のデータファイルが保存されています。
         * - | :file:`wm.Dos.val`
           - | 状態密度を計算するための固有値のデータファイル。
         * - | :file:`wm.Dos.vec`
           - | 状態密度を計算するための固有ベクトルのデータファイル。
         * - | :file:`wm.tden.cube`
           - | Gaussian cube形式の全電子密度が保存されています。
         * - | :file:`wm.sden.cube`
           - | 「LSDA-CA」、「LSDA-PW」、「GGA-PBE」を使用したスピン分極計算が実行される場合に、スピン電子密度が保存されています。
         * - | :file:`wm.dden.cube`
           - | 構成原子の孤立原子状態の電子密度の重ね合わせを基準として計算された差電子密度が保存されています。
         * - | :file:`wm.v0.cube`
           - | アップスピンの非局所ポテンシャルを除くKohn-Shamポテンシャルが保存されています。
         * - | :file:`wm.v1.cube`
           - | スピン分極計算における、ダウンスピンの非局所ポテンシャルを除くKohn-Shamポテンシャルが保存されています。
         * - | :file:`wm.vhart.cube`
           - | 差電子密度から生じる差電子Hartreeポテンシャルが保存されています。

      .. include:: ../winmos_workingdir.rst
      
   ジョブは :ref:`winmosjm_top` を通じて実行されます。

ログを表示 (mxout)
----------------------------

   ログファイルをテキストエディタで開きます。

.. _solid_openmx_animation:

アニメーション(md)
-----------------------------

   mdファイルの情報から構造最適化、分子動力学計算等のアニメーションを作成し表示します。
   
   アニメーション表示の操作方法は :ref:`animation_top` を参照してください。

結果解析
----------------------------------------

電子密度/スピン密度/エネルギー分布
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   cubeファイルを指定し、電子密度、スピン密度、エネルギー分布を表示します。
      
   サブウィンドウの操作方法は :ref:`cube_top` を参照してください。

バンド構造
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   作業ディレクトリ(:file:`dia_mx_data\\`)を指定し、バンド構造を表示します。

   Band.dispersion=onで計算が終了している必要があります。

状態密度
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   作業ディレクトリ(:file:`dia_mx_data\\`)を指定し、状態密度を表示します。

   Dos.fileout=onで計算が終了している必要があります。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

部分状態密度
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   作業ディレクトリ(:file:`dia_mx_data\\`)を指定し、部分状態密度(PDOS)を表示します。

   Dos.fileout=onで計算が終了している必要があります。
   
   グラフ描画エリアの操作方法は :ref:`chart_top` を参照してください。

フェルミ面
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   作業ディレクトリ(:file:`dia_mx_data\\`)を指定し、フェルミ面を表示します。
   
   フェルミ面の表示には `FermiSurfer <http://fermisurfer.osdn.jp/>`_ を使用します。
   :guilabel:`# of K Points` にbands計算時のk点分割数を指定し、 :guilabel:`Calc` ボタンを押すとフェルミ面が表示されます。
