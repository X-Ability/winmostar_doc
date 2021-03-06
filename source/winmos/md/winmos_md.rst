.. include:: ../../common.rst

.. _md_top:

MDメニュー
============================================

分子動力学法に関するメニューです。

MDメニューの機能を利用するにはMDパックが必要です。
また、ほぼ全ての機能で :ref:`CygwinWM <cygwinwm_top>` が必要です。

.. _md_solvate_buildcell:

溶媒を配置/セルを構築
------------------------

   本機能は主に以下の2つの目的で使用されます。
   
      1. メインウィンドウに表示されている分子の周りに溶媒分子を並べる
      2. 低分子を並べて液相を作成する
   
   並べることが可能な分子は以下の3種類です。
   
      - メインウィンドウに表示された分子
      - mol2形式で保存された分子
      - 水分子
   
   現在のファイル名の末尾に :file:`_builder_tmp` を付けた作業用フォルダが作成され、その中でPackmolを用いた処理が行われます。
   
   作業用フォルダ以下の :file:`packmol.bat`、:file:`packmol.log` に詳細が記載されています。
   作業用フォルダ以下の :file:`output.pdb` が最終的に生成された分子構造を含むファイルになります。
   
      Add Displayed Molecule
         メインウィンドウに表示されている分子を追加します。ボタンを押した後、追加する分子数を入力します。
         1個しか配置しない場合は、メインウィンドウに表示されている分子については座標が固定された状態で他の分子が並べられます。
      Add Water
         系に水分子を追加します。ボタンを押した後、追加する分子数を入力します。水分子のモデルは、:guilabel:`Options` タブの :guilabel:`Water Model` から選びます。
      Add .mol2 File
         系にあらかじめ.mol2形式で保存した分子を追加します。ボタンを押した後、.mol2ファイルの場所を指定し、追加する分子数を入力します。追加する分子数が1のときは、その分子を乱数的に配置するか、.mol2ファイルに書かれた座標に固定して配置するか指定します。PDBファイルから切り出したリガンド分子を配置する場合は、通常は固定して配置します。QM計算などから求めた点電荷（RESP電荷など）を用いてMD計算を実行する場合は、ここで指定する.mol2ファイルにその点電荷の情報が記載されている必要があります。
      Delete
         選択された上のリストの中の項目を削除します。
      Simulation Cell
         Set Density
            作成されるシミュレーションセルの密度を指定します。大きすぎる場合は分子を十分に挿入できないことがあるため、液相の場合は通常0.5～0.8 g/cm :sup:`3` 程度に設定します。
         Set Distance from Solute
            :guilabel:`Method` に :guilabel:`Solvate` を選んでいる際に、メインウィンドウに表示された分子とシミュレーションセルの間の距離を指定します。
         Set Lattice Constants
            シミュレーションセルのサイズを直接指定します。 :guilabel:`Same as main window` ボタンを押すと、メインウィンドウに設定されたセルと同じ値が入力されます。
         Change only one direction
            2つの格子定数を固定しながら、指定密度になるよう1つの格子定数を動かすときに使用します。 :guilabel:`Box Type` でtriclinicを選択すると使えるようになります。特に、界面構造を作成する際に有効な機能です。
         Box Type
            シミュレーションセルの形状を指定します。
      Option
         Water Model
            :guilabel:`Add Water` により追加される水モデルを指定します。指定した水モデルの座標データはCygwin上のGromacsにインストールされたトポロジファイルのライブラリから引用されます。
         Packmol Parameters
            Tolerance
               Packmolにおけるtoleranceパラメータを指定します。
            Margin
               Packmolを使用する場合のセルの端付近の原子を置かない領域の幅を指定します。
            Random seed
               Packmolを使用する場合の乱数の種を指定します。
            Automatically change random seed every time
               Packmolを使用する場合の乱数の種を毎回自動で変更します。
      Reset
         このウィンドウにおける設定をリセットします。
      Build
         このウィンドウで設定された内容に従いシミュレーションセルを作成します。

.. _md_insert_molecules:

分子を挿入
---------------------

   mol2形式で保存された分子を複数個、メインウィンドウに表示されている構造に追加することができます。
   シミュレーションセルが作成されていない場合は、事前に :ref:`edit_createcell_create` または :ref:`md_solvate_buildcell` を使用して作成してください。
   
   追加する分子について、座標を変えずに1つだけ追加したい場合は、 :ref:`file_append` を選択してください。
   
   内部動作は :ref:`md_solvate_buildcell` と同じです。

.. _md_charge_auto:

自動で電荷を割り当て
------------------------

   複数分子に対して、自動で電荷を割り当てます。

   現在のファイル名の末尾に :file:`_charge_tmp` を付けた作業用フォルダが作成され、その中でPackmolを用いた処理が行われます。
   
      全てのMethodを...に設定
         チェックを入れた場合には、メインウィンドウに表示されている全ての分子種に対し、プルダウンメニューで指定したMethodで電荷を計算します。チェックを入れなかった場合は、各原子種に対しMethodを選択してください。
         
         既に電荷が割り当てられた分子種には新たに電荷を割り当てない
            チェックを入れた場合には、 :guilabel:`全てのMethodを...に設定` にチェックが入っていても、すでに電荷が割り当てられた分子については新たに電荷を割り当てません。
         タンパク質・単原子イオン・水には新たに電荷を割り当てない
            チェックを入れた場合、タンパク質・単原子イオン・水分子については、この機能で電荷を割り当てません。タンパク質のMD計算においては、AM1-BCC等の方法では電荷の計算に時間が掛かり、また力場の割り当て時に残基名から自動的に電荷が割り振られるため、チェックを入れる必要があります
      Method
         電荷を割り当てる方法を選択します。
      Charge
         その分子種の電荷を設定します。中性分子では0、イオンでは+1, -1などその電荷を指定します。

手動で電荷を割り当て
------------------------

.. _md_charge_acpype:

Acpypeを使用
^^^^^^^^^^^^^^^^^^^^

   メインウィンドウに1分子だけ表示されている状態で本機能を呼び出すと、AM1-BCCまたはGasteigerの方法で点電荷を各原子に対して割り当てます。
   内部的にはCygwin上のAcpypeプログラムを使用しています。
   溶質分子の電荷割り当てや、 :ref:`md_solvate_buildcell` または :ref:`md_insert_molecules` にて挿入するmol2形式のファイルの作成時に使用します。
   中性でない多原子イオンに電荷を割り振る場合は、RESP電荷または本機能を利用する必要があります。
   多原子イオンの場合は、 :guilabel:`Total charge [e]` に電荷を入力します。
   現在のファイル名の末尾に :file:`_acpype_tmp` を付けた作業用フォルダが作成され、その中で処理が行われます。
   作業用フォルダ以下の :file:`temp.sh`、 :file:`temp.log` に詳細が記載されます。
   作業用フォルダ以下の :file:`input.acpype\input_GMX.itp` に記された電荷の値が結果となります。

.. _md_charge_manual:

マニュアル入力
^^^^^^^^^^^^^^^^^

   メインウィンドウに表示されている分子（結晶）構造に対し、原子種毎に点電荷の値を直接指定することができます。主に固体系向けの機能です。

.. _md_charge_resp:

GAMESSを使用(RESP電荷)
^^^^^^^^^^^^^^^^^^^^^^^^

   GAMESSを使用してRESP電荷を算出します。詳細は :ref:`qm_gamess_resp` を参照してください。

ポリマー
------------------------
   :ref:`md_polymer_top` を参照してください。

.. _md_interface:

界面ビルダ
------------------------
   :ref:`md_interface_top` を参照してください。

.. _md_replace_ion:

水をイオンに置換
-----------------------

   水分子を単原子イオンに置換します。あらかじめ系内に水分子を配置しておく必要があります。水を配置するためには :ref:`md_solvate_buildcell` を使用してください。主にタンパク質系において系内の電荷を中和するために使われます。内部ではCygwin上で :command:`gmx genion` を実行します。

   Neutral
      :guilabel:`True` の場合は、系全体の電荷が中性となるようイオンを配置し、 :guilabel:`Number of Cations` と :guilabel:`Number of Anions` は無視されます。 :guilabel:`False` の場合は、 :guilabel:`Number of Cations` と :guilabel:`Number of Anions` に記した個数のイオンがそれぞれ配置されます。

   Concentration
      置換するイオンの濃度を指定します。
   Cations/Anions
      陽イオンおよび陰イオンの種類をプルダウンから指定します。
   Number of Cations/Number of Anions
      陽イオンおよび陰イオンの個数を指定します。 :guilabel:`Neutral` が :guilabel:`False` の時に有効な設定となります。
   Execute
      Cygwin上で :command:`gmx genion` を実行します。現在のファイル名の末尾に :file:`_genion_tmp` を付けた作業用フォルダが作成され、その中で処理が行われます。作業用フォルダ以下の :file:`temp.sh` 、 :file:`temp.log` に詳細が記載されています。途中、系内の分子が不適切な場合に、一時的なトポロジファイル( :file:`temp.top` )の自動生成に失敗することがあります。トポロジファイル作成の詳細は作業フォルダ内の :file:`temp_top_tmp` 内に出力されます。

Gromacs
------------------------
   :ref:`md_gromacs_top` を参照してください。

LAMMPS
------------------------
   :ref:`md_lammps_top` を参照してください。

Amber
------------------------
   :ref:`md_amber_top` を参照してください。

MODYLAS
------------------------
   MODYLASのキーワード設定、計算の実行、アニメーションの表示、エネルギーの表示を行います。
   
   基本的には :ref:`md_gromacs_top` と類似の挙動を示します。

