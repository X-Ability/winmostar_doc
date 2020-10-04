
.. _createsystem_top:

初期構造の作成方法
============================================

.. _create_mole:

分子構造の作成
--------------------------

   以下のいずれかの方法を選択する。

   - 各種形式（PDB、mol、mol2、SDF、CIF、xyzなど）のファイルを :ref:`file_open` またはメインウィンドウへのドラッグアンドドロップで開く。
   
   - SMILES形式の文字列を :menuselection:`ファイル --> インポート -->` :ref:`file_import_smiles` から読み込む。
   
   - 構造式を :menuselection:`ツール -->` :ref:`tools_draw2d` で直接描画する。
   
   - 3次元の分子構造をメインウィンドウ上で構築する。
   
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
   
   3. :menuselection:`編集 --> セルを作成/編集 --> ` :ref:`edit_createcell_create` にて :guilabel:`OK` ボタンを押す。
   
.. _create_liquid:
   
低分子液体の作成
-----------------------

   1. :ref:`create_mole` の方法で1分子の構造を作成する。
   
   2. MD計算の場合は :ref:`create_charge` の方法で電荷を割り当てる。
   
   3. :menuselection:`ファイル -->` :ref:`file_saveas` からmol2形式で保存する。
   
   4. 1.から3.の手順を計算したい全ての分子種に対して行う。
   
   5. :menuselection:`MD -->` :ref:`md_solvate_buildcell` を選択する。
   
   6. 系内にどの分子を何分子入れるか決める。
      メインウィンドウに表示された分子は :guilabel:`Add Displayed Molecule` , 水分子の場合は :guilabel:`Add Water` をクリックする。
      それ以外の場合は :guilabel:`Add mol2 File` をクリックし1.から4.の手順で保存したmol2ファイルを選択する。
   
   7. 系内に投入する個数を入力する。
   
   8. 6.、7.の手順を計算したい全ての分子種に対して行う。
   
   9. :guilabel:`Solvate/Build MD Cell` ウィンドウ下部の :guilabel:`Simulation Cell` にてシステムサイズを設定し、 :guilabel:`Build` ボタンを押す。
   
   .. note::
      - 密度が高いと系の作成に失敗することがあるので、低い密度（目的の物質あるいは目的の物質に類似する物質の実験値が分かっている場合は、その値の40 %程度）から始め、 :menuselection:`編集 --> セルを作成/編集 --> ` :ref:`edit_createcell_transform` で密度を調整するか、MD計算を実行し圧力一定計算で目的の密度、圧力まで徐々に圧縮してください。
      - :ref:`cygwinwm_top` がインストールされていない、または :ref:`md_solvate_buildcell` 機能で配置するのが困難な場合は、 :ref:`edit_partial_edit` :menuselection:`--> 部分複製` 、 :ref:`edit_createcell_create` 、 :ref:`file_append` を組み合わせることでも作成可能です。
   

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
   
   2. :menuselection:`編集 -->` :ref:`edit_createcell_transform` にて :guilabel:`Transform only along the selected axis` と :guilabel:`Do not change` にチェックを入れ、 :guilabel:`Set incremental length` または :guilabel:`Set total length` にチェックを入れ、値を入力した後 :guilabel:`OK` ボタンを押す。
   
      .. note::
         - 液相の構造をMD計算で緩和した後にExpandする場合は、MD計算後の構造においてシミュレーションセルの外の座標を持つ原子が多く存在するため、Expandする前に :menuselection:`編集 -->` :ref:`edit_wrap_pbc` を選択する。分子系の場合は :guilabel:`セルの内側に分子単位で再配置` 、無機系では :guilabel:`セルの内側に原子単位で再配置` を選択する。

液液界面の作成
------------------------------------------------------

   1. :ref:`create_liquid` の方法で片方の液相を作成する。この時、予め2つの相に含まれる全ての種類の分子についてmol2ファイルを作成しておく。
   
   2. :menuselection:`ファイル -->` :ref:`file_saveas` からmol2形式で保存する。

   3. :menuselection:`MD -->` :ref:`md_solvate_buildcell` を選択する。
   
   4. もう片方の相にどの分子を何分子入れるか決める。
      水分子の場合は :guilabel:`Add Water` をクリックする。
      それ以外の場合は :guilabel:`Add mol2 File` をクリックしmol2ファイルを選択する。
   
   5. 系内に投入する個数を入力する。
   
   6. 4.、5.の手順を計算したい全ての分子種に対して行う。
   
   7. :guilabel:`Simulatoin Cell` タブで :guilabel:`Set Lattice Constants` にチェックを入れ、 :guilabel:`Same as main window` ボタンをクリックする。次に、 :guilabel:`Box Type` で「triclinic」を選択する。 :guilabel:`Set Lattice Constants` の右に、最初に作成した相のセルサイズが表示される。そのうち、一番右の欄（z方向）の値を変更する。その際、その上の :guilabel:`Set Density` の右に表示される密度を参考にする。
   
   8. :guilabel:`Build` ボタンを押す。
   
   9. :menuselection:`ファイル -->` :ref:`file_saveas` からmol2形式で保存する。

   10. :menuselection:`MD -->` :ref:`md_interface` をクリックする。
   
   11. :guilabel:`Cell` タブの :guilabel:`Cell 1` の :guilabel:`Browse` ボタンをクリックし、2.で保存したファイルを選択する。同様に、 :guilabel:`Cell 2` においては、9.で保存したファイルを選択する。
   
   12. :guilabel:`Direction` タブの :guilabel:`Interval` に液相間の距離を入力する。
   
   13. :guilabel:`Build` ボタンをクリックし、保存するファイル名を入力してから :guilabel:`保存` ボタンをクリックする。

タンパク質の作成（リガンドなし）
---------------------------------

   1. 計算したいタンパク質のpdbファイルをWinmostarで開く。
   
   2. :menuselection:`選択 -->` :ref:`select_mole` の手順でタンパク以外の成分（結合水、緩衝剤、リガンドなど）をグループ選択してから、 :menuselection:`編集 --> グループ編集 -->` :ref:`edit_partial_delete` の手順で選択グループを削除する。
   
   3. :menuselection:`編集 --> 水素を付加 -->` :ref:`edit_addh_pdb2gmx` を実行する。実行前の状態で水素が付加されているように見える場合も、この処理を省略すると後ほど計算に失敗することがある。
   
   4. :menuselection:`MD -->` :ref:`md_solvate_buildcell` をクリックする。 :guilabel:`Add Displayed Molecule` をクリックし、 :guilabel:`Enter # of molecules` で「1」と入力し :guilabel:`OK` ボタンをクリックする。 次に :guilabel:`Add Water` ボタンをクリックし、 :guilabel:`Enter # of molecules` で適当な分子数（5000～10000程度）を入力し、 :guilabel:`OK` ボタンをクリックする。その後、 :guilabel:`Build` ボタンをクリックする。
   
   5. 系を中性化するために :menuselection:`MD -->` :ref:`md_replace_ion` の手順でイオンを配置する。「WARNING: The charges defined on the main window will be discarded. Are you sure you want to continue?」と表示されたら :guilabel:`はい` をクリックする。
   
   なお、この後MD計算を実行する場合は、上記手順を実行した後ファイルを保存すると、残基情報などが適切に保存されないことがあるため、上記手順を実行後続けてMD計算を実行することが望ましい。
   
タンパク質の作成（リガンドあり）
---------------------------------

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
   
.. _create_inorganic_crystal:

無機結晶の作成
----------------------------

   CIFファイルなどで計算したい結晶のデータを既に持っている場合は、Winmostarでそのファイルを開く。そのようなファイルがない場合は、以下の操作を行う。
   
   1. :menuselection:`固体 -->` :ref:`solid_crystalbuilder` をクリックする。
   
   2. :guilabel:`Crystal Builder` ウィンドウ右上の以下の項目を選択する。
      
      - :guilabel:`Lattice` の :guilabel:`Crystal System` から計算したい結晶の分類を選択する。
      - :guilabel:`Lattice` の :guilabel:`Space Group` から計算したい結晶の空間群を選択する。 :guilabel:`Space Group` の選択肢は :guilabel:`Crystal System` によって変化する。
      - :guilabel:`Lattice Constants` に計算したい結晶の格子定数を入力する。
   
   3. :guilabel:`Crystal Builder` ウィンドウ右下のリストに、非対称要素の原子を入力する。
   
      - :guilabel:`Atom` の欄をダブルクリックし元素の種類を入力する。
      - :guilabel:`X` , :guilabel:`Y` , :guilabel:`Z` の欄をダブルクリックし座標を記入する。
      - :guilabel:`Add` ボタンで原子を追加する。
      - :guilabel:`Remove` ボタンでリスト中で選択された原子を削除する。
      
   4. :guilabel:`OK` ボタンをクリックして、結晶ビルダで指定した構造をメインウィンドウに反映する。
   
   5. 結晶にひずみを与える場合は、 :menuselection:`編集 --> セルを作成/編集 --> ` :ref:`edit_createcell_transform` 機能を使用してください。
   
無機結晶の作成（点欠陥または元素置換あり）
------------------------------------------------------

   1. 欠陥がない状態の結晶のCIFファイルを開くか、 :ref:`create_inorganic_crystal` の方法で結晶構造を作成する。
   
   2. :menuselection:`固体 -->` :ref:`solid_supercell` をクリックする。 :guilabel:`a` , :guilabel:`b` , :guilabel:`c` の値を大きくし、スーパーセルのサイズを指定する（まずは各方向2程度）。最後に :guilabel:`OK` ボタンをクリックする。
   
   3. メインウィンドウにおいて、点欠陥を作りたい箇所の原子または、元素を置換したい原子を左クリックし赤いマーカーが付いた状態にする。
   
   4. 点欠陥を作りたい場合は、 :menuselection:`編集 -->` :ref:`edit_partial_delete` をクリックする。
   
   5. 元素を置換したい場合は、 :menuselection:`編集 -->` :ref:`edit_element` から変更後の元素を選択し、その後 :menuselection:`編集 --> 属性を変更 -->` :ref:`edit_attribute_element` をクリックする。
   
.. _create_slab:
   
無機スラブ（表面）の作成
------------------------------------------------------

   1. バルクの状態の結晶のCIFファイルを開くか、 :ref:`create_inorganic_crystal` の方法で結晶構造を作成する。
   
   2. :menuselection:`固体 -->` :ref:`solid_buildslab` をクリックする。
   
   3. :guilabel:`Miller indices (h k l)` など :guilabel:`Generate Slab` ボタンより上の項目を入力してから :guilabel:`Generate Slab` ボタンをクリックする。
   
   4. :guilabel:`Generate Slab` ボタン以下の項目を入力してから :guilabel:`OK` をクリックする。作成したいスラブ構造の表裏両方の原子配置が、 :guilabel:`Surface configurations` の選択肢の中にない場合は、少なくとも片方の面の原子配置が望みの構造となるようにし :guilabel:`OK` ボタンをクリックした後、メインウィンドウで :ref:`edit_partial_delete` 機能を使って不要な原子層を削除する。原子層を予め厚めに作るときは、 :guilabel:`Generate Slab` ボタン上の :guilabel:`Minimum slab size` の値を大きくする。

分子吸着表面の作成
------------------------------------------------------

   1. :ref:`create_mole` の方法で吸着させる分子を作成する。
   
   2. :menuselection:`ファイル -->` :ref:`file_saveas` からmol2形式で保存する。
   
   3. :ref:`create_slab` の方法で表面を作成する。
   
   4. 必要に応じて、 :menuselection:`固体 -->` :ref:`solid_supercell` をクリックする。 :guilabel:`a` , :guilabel:`b` の値を大きくし、スーパーセルのサイズを指定する。最後に :guilabel:`OK` ボタンをクリックする。
   
   5. :menuselection:`ファイル -->` :ref:`file_append` をクリックし、先ほど保存した吸着分子のmol2ファイルを選択する。その後、 :menuselection:`編集 --> グループ編集 -->` :ref:`edit_group_rotate_mouse` , :ref:`edit_group_rotate_slider` , :ref:`edit_group_rotate_orien` , :ref:`edit_group_move_mouse` , :ref:`edit_group_move_slider` などの機能を用いて、吸着分子の配向、位置を変更する。

固固界面（粒界）の作成
------------------------------------------------------

   1. :ref:`create_slab` の方法で片方の固体を作成する。
   
   2. :menuselection:`ファイル -->` :ref:`file_saveas` からcif形式で保存する。
   
   3. :ref:`create_slab` の方法でもう片方の固体を作成する。
   
   4. :menuselection:`ファイル -->` :ref:`file_saveas` からcif形式で保存する。
   
   5. :menuselection:`MD -->` :ref:`md_interface` をクリックする。
   
   6. :guilabel:`Cell` タブの :guilabel:`Cell 1` の :guilabel:`Browse` ボタンをクリックし、3.で保存したファイルを選択する。同様に、 :guilabel:`Cell 2` においては、5.で保存したファイルを選択する。
   
   7. :guilabel:`Direction` タブの :guilabel:`Interval` に固体間の距離を入力する。また、 :guilabel:`Interval` の :guilabel:`Specify interval on selected axis between outermost atoms` にチェックを入れる。
   
   8. :guilabel:`Repeat` タブに移動すると、3つの :guilabel:`Suggest` ボタンのうち、上ふたつ（a-axisとb-axis）が押せる状態になっている。この :guilabel:`Suggest` ボタンをクリックし、 :guilabel:`Ratio` の値（Cell1とCell2のセルサイズ比率）が1に近く、かつシステムサイズが大きすぎない行を選択し、 :guilabel:`Set` ボタンをクリックする。
   
   9. :guilabel:`Build` ボタンをクリックし、保存するファイル名を入力してから :guilabel:`保存` ボタンをクリックする。

   10. Ctrl+左ドラッグなどにより、片方の固体をグループ選択する。詳細は :ref:`select_top` を参照する。
   
   11. :menuselection:`編集 --> グループ編集 -->` :ref:`edit_group_move_slider` をクリックし、X, Y方向にグループを並進移動させる。 :menuselection:`表示 -->` :ref:`view_three` を有効にすると位置の確認をしやすくなる。