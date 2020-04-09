
.. _createsystem_top:

初期構造の作成方法
============================================

.. _create_mole:

分子構造の作成
--------------------------

   以下のいずれかの方法を選択する。

   - 各種形式のファイルを :ref:`file_open` またはメインウィンドウへのドラッグアンドドロップで開く。
   
   - SMILES形式の文字列を :menuselection:`ファイル --> インポート -->` :ref:`file_import_smiles` から読み込む。
   
   - 分子構造をメインウィンドウ上で構築する。
   
      適宜 :ref:`edit_top` から必要な操作を選択する。
   
      1. ある程度目的の分子に形状が近づくように、初期構造（炭素原子と水素原子が結合したもの）に対し、 :ref:`edit_parts` を実行する。
      
      2. 芳香環が隣接した構造は :ref:`edit_aromatic` を実行する。
      
      3. 不要な部分構造を削除したい箇所では :ref:`edit_partial_delete`  を実行する。
      
      4. 水素原子を付加したい箇所では :ref:`edit_addh_1` を実行する。
      
      5. 原子の種類を変更したい箇所では :ref:`edit_attribute_element` を実行する。
      
      6. 化学結合を作成したい場所では :ref:`edit_addbond` を実行する。結合の種類の変更も同じ操作で行う。
      
      7. ある程度妥当な原子配置に調整するために :ref:`edit_clean` を実行する。（原子数が小さい場合に限る）
      
      8. 明示的に部分構造を回転させたい場合は :ref:`edit_partial_edit` :menuselection:`--> 部分回転` を実行する。
      
      9. 様々な配座を取りうる分子の場合は :menuselection:`ツール -->` :ref:`tools_balloon` を実行し、エネルギーの低い構造を選択する。
      
   - ポリマーの場合は、直接分子全体をモデリングしても良いが、 :ref:`create_polymer` の方法を使う方が効率が良い。
   
   - 結晶構造、スラブモデル、クラスターモデルの作成には、それぞれ :ref:`solid_crystalbuilder` , :ref:`solid_cleaveplane` , :ref:`solid_insertvacuum` , :ref:`solid_buildcluster` を実行する。
   
.. _create_charge:

点電荷の割り当て
----------------------

   MD計算で必要な点電荷をWinmostar上で設定する方法を紹介する。
   
   デフォルトのAM1/BCC電荷を用いる場合は明示的に電荷を設定する必要がない。
   また、水分子には選択した水モデルの電荷の値が無条件で適用される。
   
   AM1/BCC以外の電荷を使用する場合は、 :ref:`create_mole` の方法で1分子を作成した後、以下の方法で電荷を割り当てる。割り当てた電荷は :menuselection:`表示 -->` :ref:`view_labels_charges` を変更することで表示し確認することができる。
   
   
   - AM1/BCC電荷またはGasteiger電荷を割り当てる。
   
      :menuselection:`MD --> 手動で電荷を割り当て -->` :ref:`md_charge_acpype` の手順で割り当てる。イオンの場合は :guilabel:`Total charge [e]` に電荷を入力する。
      
   - RESP電荷を割り当てる。
      
      1. :menuselection:`QM --> GAMESS --> キーワード設定 --> Easy Setup` にて、計算手法、基底関数を「HF/6-31G*」に設定し、 :guilabel:`Method` に :guilabel:`ESP/RESP` を選択する。イオンの場合は :guilabel:`Charge` に電荷を入力する。
      
      2. :guilabel:`Easy Setup` ウィンドウを :guilabel:`OK` ボタンで閉じ、 :guilabel:`GAMESS Setup` ウィンドウで :guilabel:`Run` ボタンを押し計算を実行する。
      
      3. GAMESSの計算が終了したら :menuselection:`QM --> GAMESS --> 結果解析 -->` :ref:`qm_gamess_resp` にてRESP電荷を取得する。
   
   - MOPAC, GAMESS, Gaussian, NWChem, Quantum ESPRESSOのPopulation解析結果の電荷をメインウィンドウに読み込む。

      - MOPACの場合は :ref:`semiempirical_mopac_charge` の手順で読み込む。
      
      - Quantum ESPRESSOの場合は :menuselection:`固体 --> Quantum ESPRESSO --> Lowdin電荷` の手順で読み込む。
      
      - それ以外の場合は、ログファイルをメインウィンドウで開く。
   
   - 元素ごとに値を指定して割り当てる。
   
      - :menuselection:`MD --> 手動で電荷を割り当て -->` :ref:`md_charge_manual` の手順で割り当てる。
   
   - 選択した原子に値を入力して割り当てる。
   
      - 電荷を入力したい原子を :ref:`分子表示エリア <gui_main>` で :ref:`グループ選択 <gui_mouse>` し、 :menuselection:`編集 --> 属性を変更 -->` :ref:`edit_property_charge` から電荷を入力する。
   
   - テキストファイル上で直接編集して割り当てる。
   
      - 一旦分子構造を :menuselection:`ファイル -->` :ref:`file_saveas` においてmol2形式で保存し、保存したmol2ファイルを任意のテキストエディタで開き、 :command:`@<TRIPOS>ATOM` から始まるセクションの9列目の値を編集する。編集後、 :menuselection:`ファイル -->` :ref:`file_reload_file` をクリックし、編集後の構造を読み込む。

   - ポリマーの場合は、直接分子全体のAM1/BCC電荷、RESP電荷などを計算すると時間が掛かるため、 :ref:`create_polymer` の方法を使う。
   
孤立系（気体）の作成
---------------------------------

   1. :ref:`create_mole` の方法で1分子の構造を作成する。量子化学計算の場合は周期境界条件を使わないため以降の操作は不要である。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3. :menuselection:`MD -->` :ref:`edit_createcell` にて :menuselection:`Create --> Distance` の値を設定し :guilabel:`Create` ボタンを押す。適宜セルのサイズを微調整した上で、 :guilabel:`OK` ボタンを押す。
   
.. _create_liquid:
   
低分子液体の作成
-----------------------

   1. :ref:`create_mole` の方法で1分子の構造を作成する。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3. mol2形式で保存する。
   
   4. 1.から3.の手順を計算したい全ての分子種に対して行う。
   
   5. :menuselection:`MD -->` :ref:`md_solvate_buildcell` を選択する。
   
   6. 系内にどの分子を何分子入れるか決める。
      メインウィンドウに表示された分子は :guilabel:`Add Displayed Molecule` , 水分子の場合は :guilabel:`Add Water` をクリックする。
      それ以外の場合は :guilabel:`Add mol2 File` をクリックし1.から4.の手順で保存したmol2ファイルを選択する。
   
   7. 系内に投入する個数を入力する。
   
   8. 6.、7.の手順を計算したい全ての分子種に対して行う。
   
   9. :guilabel:`Solvate/Build MD Cell` ウィンドウ下部の :guilabel:`Simulation Cell` にてシステムサイズを設定し、 :guilabel:`Build` ボタンを押す。
   
   .. note::
      - 密度が高いと系の作成に失敗することがあるので、低い密度（実験値が分かっている場合は実験値の40 %程度）から始め、圧力一定計算で目的の密度、圧力まで徐々に圧縮してください。
      - :ref:`cygwinwm_top` がインストールされていない、または :ref:`md_solvate_buildcell` 機能で配置するのが困難な場合は、 :ref:`edit_partial_edit` :menuselection:`--> 部分複製` 、 :ref:`edit_createcell` 、 :ref:`file_append` を組み合わせることでも作成可能です。
   

.. _create_polymer:

ポリマーの作成
-----------------------------------

   1. :ref:`create_mole` の方法で計算したいポリマーの繰り返し単位（ここではモノマーと呼ぶ）を作成する。例えば、ポリエチレンの場合はエチレン分子ではなくエタン分子を作成する。
   
   2. MD計算の場合は、モノマーの状態で :ref:`create_charge` の方法で電荷を割り当てる。
   
   3.  :ref:`分子表示エリア <gui_main>` にて、隣のモノマーと接続する原子を2か所左クリックし、 :menuselection:`MD --> ポリマー -->` :ref:`md_polymer_register` の方法でモノマーとして登録する。
   
   4. 作成したいポリマーの構造に応じて、:menuselection:`MD --> ポリマー -->` :ref:`md_polymer_homo` 、 :ref:`md_polymer_block` 、 :ref:`md_polymer_random` の操作を実行する。
   
      .. tip::
         - 例えば `-[AAABBB]-` のような構造の場合は、一旦 :ref:`md_polymer_block` を使用して `AAABBB` を作成し、 :file:`wpo` フォルダに作成されたwpoファイル（実態はmol2形式）を再度 :ref:`md_polymer_register` にてモノマーとして登録し :ref:`md_polymer_homo` を使用する。
   
   5. :menuselection:`MD --> ポリマー -->` :ref:`md_polymer_cell` の操作を実行し、シミュレーションセルを作成する。
   
   6. ポリマー中に低分子成分が溶解している場合は、 :ref:`create_mole` と :ref:`create_charge` の手順で溶解している低分子を作成しあらかじめmol2形式で保存しておく。そして、5.の手順の後で保存した低分子成分のmol2ファイルを :menuselection:`MD -->` :ref:`md_insert_molecules` にて選択し挿入する。5.の手順において密度を低めに設定しないと低分子成分の挿入に失敗することがある。
   
気液界面の作成
-------------------------

   1. :ref:`create_liquid` の方法で液相を作成する。
   
   2. :menuselection:`編集 -->` :ref:`edit_createcell` にて :menuselection:`Expand --> Width` の値と :guilabel:`Axis` を設定し :guilabel:`Expand` ボタンを押す。Expandするサイズは、気相のサイズにする。その後、 :guilabel:`OK` ボタンを押す。
   
      .. note::
         - 液相の構造をMD計算で緩和した後にExpandする場合は、MD計算後の構造においてシミュレーションセルの外の座標を持つ原子が多く存在するため、Expandする前に :menuselection:`編集 -->` :ref:`edit_wrap_pbc` を選択する。分子系の場合は :guilabel:`セルの内側に分子単位で再配置` 、無機系では :guilabel:`セルの内側に原子単位で再配置` を選択する。

タンパク質（リガンドなし）
----------------------------

   1. 計算したいタンパク質のpdbファイルをWinmostarで開く。
   
   2. :menuselection:`選択 -->` :ref:`select_mole` の手順でタンパク以外の成分（結合水、緩衝剤、リガンドなど）をグループ選択してから、 :menuselection:`編集 --> グループ編集 -->` :ref:`edit_partial_delete` の手順で選択グループを削除する。
   
   3. :menuselection:`編集 --> 水素を付加 -->` :ref:`edit_addh_pdb2gmx` を実行する。実行前の状態で水素が付加されているように見える場合も、この処理を省略すると後ほど計算に失敗することがある。
   
   4. :menuselection:`MD -->` :ref:`md_solvate_buildcell` をクリックする。 :guilabel:`Add Displayed Molecule` をクリックし、 :guilabel:`Enter # of molecules` で「1」と入力し :guilabel:`OK` ボタンをクリックする。 次に :guilabel:`Add Water` ボタンをクリックし、 :guilabel:`Enter # of molecules` で適当な分子数（5000～10000程度）を入力し、 :guilabel:`OK` ボタンをクリックする。その後、 :guilabel:`Build` ボタンをクリックする。
   
   5. 系を中性化するために :menuselection:`MD -->` :ref:`md_replace_ion` の手順でイオンを配置する。「WARNING: The charges defined on the main window will be discarded. Are you sure you want to continue?」と表示されたら :guilabel:`はい` をクリックする。
   
   なお、この後MD計算を実行する場合は、上記手順を実行した後ファイルを保存すると、残基情報などが適切に保存されないことがあるため、上記手順を実行後続けてMD計算を実行することが望ましい。
   
タンパク質（リガンドあり）
----------------------------

   1. 計算したいタンパク質-リガンド複合体のpdbファイルをWinmostarで開く。
   
   2. :menuselection:`選択 -->` :ref:`select_mole` の手順でリガンド以外の成分（タンパク、結合水、緩衝剤など）をグループ選択してから、:menuselection:`編集 -->` :ref:`edit_partial_delete` の手順で選択グループを削除する。
   
   3. :menuselection:`編集 --> 水素を付加 -->` :ref:`edit_addh_openbabel` を実行する。
   
   4. :menuselection:`ファイル -->` :ref:`file_saveas` にてリガンドの構造をmol2形式で保存する。
   
   5. 再び計算したいタンパク質-リガンド複合体のpdbファイルをWinmostarで開く。
   
   6. :menuselection:`選択 -->` :ref:`select_mole` の手順でタンパク以外の成分（結合水、緩衝剤、リガンドなど）をグループ選択してから、 :menuselection:`編集 --> グループ編集 -->` :ref:`edit_partial_delete` の手順で選択グループを削除する。
   
   7. :menuselection:`編集 --> 水素を付加 -->` :ref:`edit_addh_pdb2gmx` を実行する。実行前の状態で水素が付加されているように見える場合も、この処理を省略すると後ほど計算に失敗することがある。
   
   8. :ref:`md_solvate_buildcell` をクリックする。 :guilabel:`Add Displayed Molecule` をクリックし、 :guilabel:`Enter # of molecules` で「1」と入力し :guilabel:`OK` ボタンをクリックする。 次に :guilabel:`Add Water` ボタンをクリックし、:guilabel:`Enter # of molecules` で適当な分子数（5000～10000程度）を入力し、 :guilabel:`OK` ボタンをクリックする。そして、 :guilabel:`Add mol2 File` ボタンをクリックし、4.で保存したmol2ファイルを開き、 :guilabel:`Enter # of molecules` で「1」と入力し、 :guilabel:`OK` ボタンをクリックする。「この分子を乱数的に配置しますか？」と聞かれたら :guilabel:`いいえ` をクリックする。その後、 :guilabel:`Build` ボタンをクリックする。
   
   9. 系を中性化するために :menuselection:`MD -->` :ref:`md_replace_ion` の手順でイオンを配置する。「WARNING: The charges defined on the main window will be discarded. Are you sure you want to continue?」と表示されたら :guilabel:`はい` をクリックする。
   
   なお、この後MD計算を実行する場合は、上記手順を実行した後ファイルを保存すると、残基情報などが適切に保存されないことがあるため、上記手順を実行後続けてMD計算を実行することが望ましい。
   
