.. include:: ../../common.rst

.. _md_top:

MDメニュー
============================================

MDメニューの機能を利用するにはMDパックが必要です。ほぼ全ての機能で :ref:`cygwin_wm <cygwinwm_top>` が必要です。

.. _md_remote:

リモートジョブ投入
----------------------

	:ref:`remote_top` を参照してください。

.. _md_solvate_buildcell:

溶媒を配置/セルを構築
------------------------

   メインウインドウに表示された分子の周囲に水あるいはmol2形式で保存された溶媒分子を配置します。主に液相の作成に利用します。
   現在のファイル名の末尾に :file:`_builder_tmp` を付けた作業用フォルダが作成され、その中で処理が行われます。
   内部ではCygwin上で :command:`gmx insert-molecules` または :command:`gmx solvate` を実行します。
   作業用フォルダ以下の :file:`generate.sh`、:file:`generate.log` に詳細が記載されています。
   作業用フォルダ以下の :file:`output.gro` が最終的に生成された分子構造を含むファイルになります。

      Put the molecule on the main window as solute
         チェックが入っている場合は、メインウインドウに表示されている分子を溶質（ :guilabel:`[SOLUTE]` ）とし、その周囲に下のリストに追加した分子を系内に配置します。
         チェックが入っていない場合は、メインウインドウに表示されている分子は破棄し、下のリストに追加した分子のみを系内に配置します。
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
            :guilabel:`Method` に :guilabel:`Solvate` を選んでいる際に、メイン画面に表示された分子とシミュレーションセルの間の距離を指定します。
         Set Box Size
            シミュレーションセルのサイズを直接指定します。
         Box Type
            シミュレーションセルの形状を指定します。
      Option
         Water Model
            :guilabel:`Add Water` により追加される水モデルを指定します。指定した水モデルの座標データはCygwin上のGromacsにインストールされたトポロジファイルのライブラリから引用されます。
      Reset
         このウインドウにおける設定をリセットします。
      Build
         このウインドウで設定された内容に従いシミュレーションセルを作成します。

.. _md_insert_molecules:

分子を挿入
---------------------

   mol2形式で保存された分子をシミュレーションセル内にランダムに挿入します。
   シミュレーションセルが作成されていない場合は、 :ref:`edit_createcell` または :ref:`md_solvate_buildcell` を使用して作成してください。
   内部動作は :ref:`md_solvate_buildcell` と同じです。

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

電荷を割り当て
------------------------

.. _md_charge_acpype:

Acpypeを使用
^^^^^^^^^^^^^^^^^^^^

   メインウインドウに1分子だけ表示されている状態で本機能を呼び出すと、AM1-BCCまたはGasteigerの方法で点電荷を各原子に対して割り当てます。
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

   メインウインドウに表示されている分子（結晶）構造に対し、原子種毎に点電荷の値を直接指定することができます。主に固体系向けの機能です。

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

ポリマー
------------------------
   :ref:`md_polymer_top` を参照してください。

散逸粒子動力学
------------------------

DPDセルビルダ
^^^^^^^^^^^^^^^^

   散逸粒子動力学用のシミュレーションセルを作成します。

ポテンシャル編集
^^^^^^^^^^^^^^^^^

   LAMMPSを用いた散逸粒子動力学用のポテンシャルファイルを作成・編集します。

界面ビルダ
------------------------
   :ref:`md_interface_top` を参照してください。

Bond/Angle算出
^^^^^^^^^^^^^^^^^^^^^^^

   MDのトラジェクトリファイル内の、指定した原子間の結合長・結合角・二面角を解析します。
   まずGromacs, LAMMPS, Amber, QE（QEはCPMDのみ）のトラジェクトリ読み込みをしてアニメーションウインドウが表示された状態で、本機能を選択します。
   つぎに、Typeを選択し、Target Atomsに、コンマ区切りで計算したい結合長・結合角・二面角を定義する原子ペアを列挙します。
   Drawをクリックすると、時間変化（Time change）またはヒストグラム（Histogram）が表示されます。
   アニメーションウインドウが閉じていると本機能は動作しません。

