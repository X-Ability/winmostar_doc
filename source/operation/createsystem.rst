
.. _createsystem_top:

初期構造の作成方法
============================================

.. _create_mole:

分子構造の作成
--------------------------

   以下のいずれかの方法を選択する。

   - 各種形式のファイルを :ref:`file_open` またはメインウインドウへのドラッグアンドドロップで開く。
   
   - SMILES形式の文字列を :ref:`file_import` :menuselection:`--> SMILES` から読み込む。
   
   - 分子構造をメインウインドウ上で構築する。
   
      様々な方法が用意されているので、適宜 :ref:`edit_top` から必要な操作を選択する。
   
      1. ある程度目的の分子に形状が近づくように、初期構造（炭素原子と水素原子が結合したもの）に対し、部品を置換していく（ :ref:`edit_parts` :menuselection:`--> 部品置換` ）。
      
      2. 芳香環が隣接した構造は :ref:`edit_aromatic` の操作で作成する。
      
      3. 不要な部分構造を削除したい箇所では :ref:`edit_partial_edit` :menuselection:`--> 部分削除` の操作を行う。
      
      4. 水素原子を付加したい箇所では :ref:`edit_hydrogen` :menuselection:`--> 1原子` の操作を行う。
      
      5. 原子の種類を変更したい箇所では :ref:`edit_atom` :menuselection:`--> 元素変更` の操作を行う。
      
      6. 化学結合を作成したい場所では :ref:`edit_bond` :menuselection:`--> 結合付加` の操作を行う。結合の種類の変更も同じ操作で行う。
      
      7. ある程度妥当な原子配置を得るために :ref:`edit_clean` の操作を行う。（原子数が小さい場合に限る）
      
      8. 明示的に部分構造を回転させたい場合は :ref:`edit_partial_edit` :menuselection:`--> 部分回転` の操作を行う。
      
      9. 様々な配座を取りうる分子の場合は :menuselection:`ツール --> 配座探索` を適用し、エネルギーの低い構造を取得する。
      
   - ポリマーの場合は、直接分子全体をモデリングしても良いが、 :ref:`md_polymer_top` の方法を使った方が効率が良い。
   
.. _create_charge:

点電荷の割り当て
----------------------

   MD計算の場合は、 :ref:`create_mole` の方法で1分子を作成した後、以下のいずれかの方法で点電荷を各原子に割り当てる。水分子の場合は、選択した水モデルの電荷が使用されるので点電荷の割り当てを省略できる。
    
   - AM1/BCCまたはGasteiger電荷を割り当てる。
   
      - :menuselection:`MD --> 電荷を割り当て -->` :ref:`md_charge_acpype` の手順で割り当てる。イオンの場合は :guilabel:`Total charge [e]` に電荷を入力する。
      
   - RESP電荷を割り当てる。
      
      1. :menuselection:`QM --> GAMESS --> GAMESSキーワード設定 --> EasySetup` にて、計算手法、基底関数を選択し、 :guilabel:`Method` に :guilabel:`ESP/RESP` を選択する。イオンの場合は :guilabel:`ICHARG` に電荷を入力する。
      
      2. :guilabel:`Easy Setup` ウインドウを :guilabel:`Quit` ボタンで閉じ、 :guilabel:`GAMESS Setup` ウインドウを :guilabel:`Set` ボタンで閉じる。
      
      3. GAMESSの計算を実行し、終了したら :menuselection:`QM --> GAMESS --> インポート --> RESP charge from punch` にてRESP電荷を取得する。
   
   - MOPAC, GAMESS, Gaussian, NWChem, Quantum ESPRESSOのPopulation解析結果の電荷をメインウインドウに読み込む。

      - MOPACの場合は :ref:`semiempirical_mopac_charge` の手順で読み込む。
      
      - Quantum ESPRESSOの場合は :menuselection:`固体 --> Quantum ESPRESSO --> Lowdin電荷` の手順で読み込む。
   
   - 元素ごとに値を指定して割り当てる。
   
      - :menuselection:`MD --> 電荷を割り当て -->` :ref:`md_charge_acpype` の手順で割り当てる。
   
   - 選択した原子に値を入力して割り当てる。
   
      - 電荷を入力したい原子を :ref:`分子表示エリア <gui_main>` で :ref:`グループ選択 <gui_mouse>` し、 :ref:`edit_atom` :menuselection:`--> 電荷/スピン変更` から電荷を入力する。
   
   - ポリマーの場合は、直接分子全体のAM1/BCC電荷、RESP電荷などを計算すると時間が掛かるため、 :ref:`md_polymer_top` の方法を使う。
   
孤立系（気体）の作成
---------------------------------

   1. :ref:`create_mole` の方法で1分子を作成する。量子化学計算の場合は周期境界条件を使わないため以降の操作は不要である。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3. :ref:`edit_createcell` にて :menuselection:`Create --> Distance` の値を設定し :guilabel:`Create` ボタンを押す。適宜セルのサイズを微調整した上で、 :guilabel:`OK` ボタンを押す。
   
.. _create_liquid:
   
低分子液体の作成
-----------------------

   1. :ref:`create_mole` の方法で1分子を作成する。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3. mol2形式で保存する。
   
   4. 1.から3.の手順を計算したい全ての分子種に対して行う。
   
   5. :ref:`md_solvate_buildcell` を選択し、 :guilabel:`Put the molecule on main window as solute` のチェックを外す。
   
   6. 水分子の場合は :guilabel:`Add Water` をクリックする。それ以外の場合は :guilabel:`Add mol2 File` をクリックし1.から4.の手順で保存したmol2ファイルを選択する。
   
   7. 系内に投入する個数を入力する。
   
   8. 6.、7.の手順を計算したい全ての分子種に対して行う。
   
   9. :guilabel:`Solvate/Build MD Cell` ウインドウ下部の :guilabel:`Simulation Cell` にてシステムサイズを設定し、 :guilabel:`Build` ボタンを押す。
   
   .. note::
      - 密度が高いと系の作成に失敗することがあるので、少し低い密度から始め、圧力一定計算で目的の密度、圧力まで徐々に圧縮してください。
      - :ref:`cygwinwm_top` がインストールされていない、または :ref:`md_solvate_buildcell` 機能で配置するのが困難な場合は、 :ref:`edit_partial_edit` :menuselection:`--> 部分複製` 、 :ref:`edit_createcell` 、 :ref:`file_append` を組み合わせることでも作成可能です。
   
ポリマーの作成
-----------------------------------

   1. :ref:`create_mole` の方法で計算したいポリマーの繰り返し単位（ここではモノマーと呼ぶ）を作成する。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3.  :ref:`分子表示エリア <gui_main>` にて、隣のモノマーと接続する原子を2か所左クリックし、 :ref:`md_polymer_register` の方法でモノマーとして登録する。
   
   4. 作成したいポリマーの構造に応じて、 :ref:`md_polymer_homo` 、 :ref:`md_polymer_block` 、 :ref:`md_polymer_random` の操作を実行する。
   
      .. tip::
         - 例えば `-[AAABBB]-` のような構造の場合は、一旦 :ref:`md_polymer_block` を使用して `AAABBB` を作成し、 :file:`wpo` フォルダに作成されたwpoファイル（実態はmol2形式）を再度 :ref:`md_polymer_register` にてモノマーとして登録し :ref:`md_polymer_homo` を使用する。
   
   5. :ref:`md_polymer_cell` の操作を実行し、シミュレーションセルを作成する。
   
   6. ポリマー中に低分子成分が溶解している場合は、5.の手順で密度を小さめに設定し、 :ref:`create_mole` と :ref:`create_charge` の手順であらかじめ作成しmol2形式で保存した低分子成分を :ref:`md_insert_molecules` にて選択し挿入する。
   
気液界面の作成
-------------------------

   1. :ref:`create_liquid` の方法で液相を作成する。
   
   2. :ref:`edit_createcell` にて :menuselection:`Expand --> Width` の値と :guilabel:`Axis` を設定し :guilabel:`Expand` ボタンを押す。Expandするサイズは、気相のサイズにする。その後、 :guilabel:`OK` ボタンを押す。
   
      .. note::
         - 液相の構造をMD計算で緩和した後にExpandする場合は、MD計算後の構造においてシミュレーションセルの外の座標を持つ原子が多く存在するため、Expandする前に :ref:`edit_wrap_pbc` を選択する。 :guilabel:`結合を保持しますか？` と尋ねられたら、分子系の場合は :guilabel:`はい` 、無機系では :guilabel:`いいえ` をクリックする。


