.. include:: ../../common.rst

.. _solid_top:

固体メニュー
============================================

第一原理（バンド）計算に関するメニューです。

固体メニューの機能を利用するにはSolidパックが必要です。

.. _solid_crystalbuilder:

結晶ビルダ
------------------------
結晶構造を作成します。主に以下の目的で使用します。
   
   - 空間群、格子定数、非対称要素を入力して結晶構造を作成します。
   - 結晶ビルダ上でCIFファイルを開きa, b, c軸を交換します。
   - 非整数のoccupancyを含むCIFファイルを開き、原子を割り当てる。

   Fileメニュー
      New
         結晶構造を新規作成します。
      Open
         CIFファイルを開きます。
      Save As
         結晶ビルダに表示されている結晶構造をCIF形式またはXYZ形式で保存します。
      Save As P1 CIF
         チェックした場合はCIF形式で保存する際にP1で保存します。
   Editメニュー
      Exchange Axis
         軸(a, b, c)と非対称要素の座標(x, y, z)を交換します。詳しくはInternational Tables vol.Aをご覧ください。
      Discard symmetry
         対称操作を破棄し、空間群はP1とします。この時、既存の対称操作によって再生された全ての対称要素は非対称要素として認識されます。 
      Assign Atoms to Non-Integer Occupancy Sites
         読み込んだCIFファイル内で定義された占有率の項目（_atom_site_occupancy）を元にして、各サイトに対してランダムな原子を発生させます。占有率に応じたスーパーセルを作成したい場合、リピート機能を用いて十分に大きなスーパーセルを作成してからこの機能を使用してください。
      
   .. include:: winmos_crystal_common.rst
   
   Crystal System
      結晶系を選択します。
   Space Group
      空間群を番号もしくはHermann–Mauguin記号から選択します。
   Lattice Constant
      格子定数を設定します（選択した空間群によって入力できるフィールドが変わります）。
   Add
      非対称要素となる原子を追加します。
   Remove
      リスト上で選択した非対称要素となる原子を削除します。
   Atom
      元素記号を入力/修正します。
   X, Y, Z
      原子サイトを分率座標（fractional coordinate）で設定します。
   OK
      作成した結晶構造をメインウィンドウに読み込みます。
      
      読み込みを取り消したい場合は、メインウィンドウで :menuselection:`編集 --> 元に戻す` をクリックしてください。
   Cancel
      結晶ビルダで入力した構造を破棄しメインウィンドウに戻ります。

.. _solid_supercell:

スーパーセルを作成
------------------------
メインウィンドウで表示されているセルを複製しスーパーセルを作成します。

:guilabel:`a` , :guilabel:`b` , :guilabel:`c` に繰り返し数を入力し、 :guilabel:`OK` ボタンをクリックします。

   Viewメニュー
      :ref:`solid_crystalbuilder` と同じです。

.. _solid_cleaveplane:

表面を切り出し
-----------------
ミラー面の指定して単位格子の再定義します。

スラブモデルを作成する際は、この機能を実行した後に :ref:`solid_insertvacuum` を実行してください。

   Viewメニュー
      :ref:`solid_crystalbuilder` と同じです。
   Step 1/2 Cutting
      Cleave Plane
         表面のミラー指数(h k l)を定義します。
      Offset
         ユニットセルの上端から下端までの相対位置（百分率）により、表面の位置を指定します。
      Next >>
         :guilabel:`Step 2/2 Transform Unit Cell` に進みます。
   Step 2/2 Transform Unit Cell
      View Configuration
         描画範囲を設定します。
      Lattice Choice
         格子の定義を選択します。
         
         Manual
            原点、a軸、b軸、c軸上の原子を :guilabel:`Set` ボタンで指定します。
         Filter (Ortho)
            :guilabel:`Lattice` の中から選択します。
            :guilabel:`Lattice` には長方形状の候補のみ出現します。
         Filter (All)
            :guilabel:`Lattice` の中から選択します。
         Lattice
            格子の定義の選択肢が表示されます。
         Filter
            :guilabel:`Lattice` の絞り込み条件を指定します。
      OK
         処理を実行します。

.. _solid_insertvacuum:

真空層を挿入
------------------
結晶構造の上下に真空層を挿入し、スラブモデルの構築します。

本機能を使って真空層を挿入すると、真空層に接する面の両側に原子がコピーされるが、 :menuselection:`編集 -->` :ref:`edit_createcell` を使って真空層を挿入してもそのようにならず原子数は変化しない。

   Viewメニュー
      :ref:`solid_crystalbuilder` と同じです。
   Axis
      真空層を挿入する方向をX, Y, Z軸から選択します。
   Bulk
      元のセルの厚さをÅ単位で示します。（表示のみ）
   Vacuum
      真空層の厚さをÅ単位で定義します。
   Total Width
      :guilabel:`Bulk` と :guilabel:`Vacuum` の合計値を示します。（表示のみ）
   Automatically shift to center
      このチェックボックスがチェック状態のとき、元の結晶構造はスラブモデルの中心に固定されます。チェック状態でないとき、Shift機能が利用できるようになります。
   Shift
      拡張されたセル内での表面構造の位置を指定できます。エディットボックス内の数値は基準面の位置を分率座標で示しています。
   Reference Plane
      基準面の位置を指定します。Baseのとき、基準面は結晶構造の底面になります。Centerのとき基準面は結晶構造の中央となります。
   Terminate dangling bonds with hydrogen atoms
      真空に接する面において、ダングリングボンドを水素でキャップします。官能基で修飾したい場合は、本機能にチェックを入れた後、メインウィンドウに戻ってから :ref:`edit_parts` を使用して水素を任意の官能基に置換してください。
   OK
      処理を実行します。


.. _solid_buildcluster:

クラスタを作成
------------------

結晶構造からナノクラスターを切り出します。

元のユニットセルの原子は不透明、ユニットセル外の原子は半透明で表示されます。

   Viewメニュー
      :ref:`solid_crystalbuilder` と同じです。
   Center
      クラスタの中心点を分率座標で指定します。グラフィック画面上の原子を選択した状態で、Setをクリックすると選択した原子位置を中心点に指定できます。     Cluster Radius
      クラスターの半径をオングストローム単位で指定します。
   Hydrogen
      真空層の厚さをÅ単位で定義します。
   OK
      処理を実行します。

.. _solid_convertcell:

格子を変換
------------------------
メインウィンドウで表示されているセルについて、プリミティブセル-コンベンショナルセル間の変換を行います。

Quantum ESPRESSO
------------------------
   :ref:`solid_qe_top` を参照してください。

OpenMX
------------------------
   :ref:`solid_openmx_top` を参照してください。

FDMNES
------------------------
   :ref:`solid_fdmnes_top` を参照してください。

