.. include:: ../../common.rst

.. _md_polymer_top:

:menuselection:`MD --> ポリマー` メニュー
============================================

ポリマー系を作成する手順は以下のとおりである。

   1. モノマーをモデリングし、 :ref:`md_polymer_register` を実行する。
   
   2. 1で登録したモノマーを用いて :ref:`md_polymer_homo` , :ref:`md_polymer_block` , :ref:`md_polymer_random` を用いてポリマーを登録する。
   
   3. :ref:`md_polymer_cell` にて、 2. で登録したポリマーを用いてセルを構築する。
   
   低分子・ポリマー混合系を作成したい場合は、上記手順でポリマー系を作成した後に :ref:`md_insert_molecules` で低分子を追加する。

.. _md_polymer_register:

モノマー登録
-------------------

   :ref:`md_polymer_homo` 、 :ref:`md_polymer_block` 、 :ref:`md_polymer_random` で使用するためのモノマーを登録します。 
   :ref:`md_polymer_pref` で設定したモノマーファイルの保存先に、 :file:`wmo` という拡張子で保存されます。 
   :file:`wmo` ファイルはWinmostar独自のコメントが付加したmol2ファイルです。

   1) メインウインドウにおいて登録したいモノマー（繰り返し単位）の構造を作成します。
   2) HeadとTailの2原子を左クリックして、赤丸の :ref:`マーカー <edit_top>` が付いた状態にし、本機能を呼び出します。

   [Head], [Tail]
      選択したHead原子とTail原子の番号が表示されます。
   [Name]
      登録するモノマーの名前を入力します。
   [OK]
      モノマーを登録しウインドウを閉じます。モノマーファイルが作成されます。
   [Cancel]
      設定を破棄してモノマー登録画面を閉じます。

.. _md_polymer_homo:

ホモポリマービルダ
-------------------------
   :ref:`md_polymer_cell` で使用するためのホモポリマーを、 :ref:`md_polymer_register` で登録されたモノマーから作成し登録します。
   :ref:`md_polymer_pref` で設定したポリマーファイルの保存先に、 :file:`wpo` という拡張子で保存されます。 
   :file:`wpo` ファイルはWinmostar独自のコメントが付加したmol2ファイルです。
   ポリマー全体の電荷は、使用したモノマー（繰り返し単位）の電荷と重合度の積になります。
   重合により削除された原子の分の電荷はポリマー全体の原子に均等に割り当てられます。

   [Polymer Name]
      登録するポリマーの名前を入力します。
   [Polymerization Degree]
      重合度を指定します。
   [Monomer List]
      使用するモノマーを選択します。

      [Display]
         選択したモノマーをメインウインドウに表示します。
      [Delete]
         選択したモノマーファイルを削除します。
   [Tacticity]
      [Isotactic]
         アイソタクチックポリマーを作成します。
      [Syndiotactic]
         シンジオタクチックポリマーを作成します。
      [Atactic]
         アタクチックポリマーを作成します。

         [Racemo Ratio]
            アタクチックポリマー選択の際、ラセモ率(0 < x < 1.0)を指定します。
   [Head/Tail Configulation]
      [Head to Tail]
         モノマーのHead原子とTail原子を重ねて結合します。
      [Head to Head]
         モノマーのHead原子とHead原子を重ねて結合します。また、モノマーのTail原子とTail原子を重ねて結合します。
   [Build]
      ポリマーを登録します。ポリマーファイルが作成されます。
   [Close]
      ウインドウを閉じます。

.. _md_polymer_block:

ブロックポリマービルダ
--------------------------

   :ref:`md_polymer_cell` で使用するためのブロックポリマーを、 :ref:`md_polymer_register` で登録されたモノマーから作成し登録します。
   :ref:`md_polymer_pref` で設定したポリマーファイルの保存先に、 :file:`wpo` という拡張子で保存されます。 
   :file:`wpo` ファイルはWinmostar独自のコメントが付加したmol2ファイルです。
   電荷の割り当て方は :ref:`md_polymer_homo` と同じです。

   [Polymer Name]
      登録するポリマーの名前を入力します。
   [Polymerization Degree]
      重合度を指定します。
   [First Monomer]
      先頭モノマーをモノマーリストから選択します。
   [Last Monomer]
      末尾モノマーをモノマーリストから選択します。
   [Internal Monomer]
      中間のモノマーをモノマーリストから選択します。[Number]にモノマー数を入力します。

      [Number]
         中間のモノマー数を指定します。
      [Add]
         設定した中間モノマー名と数をInternal Monomer Listに反映させます。
      [Display]
         設定した中間モノマーをメインウインドウに表示します。
      [Delete wmo File]
         指定したモノマーファイルを削除します。
   [Delete From List]
      リスト内で選択された中間モノマーをリストから削除します。
   [Build]
      ポリマーを登録します。ポリマーファイルが作成されます。
   [Close]
      ウインドウを閉じます。

.. _md_polymer_random:

ランダムポリマービルダ
------------------------

   :ref:`md_polymer_cell` で使用するためのランダムポリマーを、 :ref:`md_polymer_register` で登録されたモノマーから作成し登録します。
   :ref:`md_polymer_pref` で設定したポリマーファイルの保存先に、 :file:`wpo` という拡張子で保存されます。 
   :file:`wpo` ファイルはWinmostar独自のコメントが付加したmol2ファイルです。
   電荷の割り当て方は :ref:`md_polymer_homo` と同じです。

   [Polymer Name]
      登録するポリマーの名前を入力します。
   [Polymerization Degree]
      重合度を指定します。
   [First Monomer]
      先頭モノマーをモノマーリストから選択します。
   [Last Monomer]
      末尾モノマーをモノマーリストから選択します。
   [Internal Monomer]
      中間のモノマーをモノマーリストから選択します。[Number]にモノマー数を入力します。
      
      [Ratio]
         選択した中間モノマーの出現率(0 < x < 1.0)を指定します。
      [Add]
         設定した中間モノマー名と出現率をInternal Monomer Listに反映させます。
      [Display]
         設定した中間モノマーをメインウインドウに表示します。
      [Delete wmo File]
         指定したモノマーファイルを削除します。
   [Sum of Ration]
      Internal Monomer ListにリストアップされたRatioの合計値が表示されます。
   [Delete From List]
      Internal Monomer List内で選択した中間モノマーをリストから削除します。
   [Definition of Ratio]
      [Probability of Each Monomer]
         出現率[Add]に従って中間モノマー発生させます。最終的な中間モノマーの比率は出現率に一致するとは限りません。
      [Proportion in Total Monomers]
         最終的に得られる中間モノマーの比率は出現率[Add]に比例します。
   [Build]
      ポリマーを登録します。ポリマーファイルが作成されます。
   [Close]
      ウインドウを閉じます。

.. _md_polymer_cell:

ポリマーセルビルダ
------------------------
   :ref:`md_polymer_homo` 、 :ref:`md_polymer_block` 、 :ref:`md_polymer_random` において登録したポリマーを用いてシミュレーションセルを構築します。 
   :ref:`md_solvate_buildcell` を用いると各分子を剛体的にシミュレーションセルに配置するため高密度で作成することが困難ですが、本機能を使用するとLAMMPSを使用してエネルギー最小化計算を実行しながら配置するため比較的高密度で作成することができます。

   [Box Configulation]
      [Density]
         密度を指定します。
      [X-Axis Length]
         直方体セルのX方向の長さをÅ単位で指定します。または長さがÅ単位で表示されます。
      [Y-Axis Length]
         直方体セルのY方向の長さをÅ単位で指定します。または長さがÅ単位で表示されます。
      [Z-Axis Length]
         直方体セルのZ方向の長さがÅ単位で表示されます。
      [Cubic Cell]
         立方体セルを指定します。
      [Periodic Boundary Condition]
         [X],[Y],[Z]
            周期境界条件を課す方向にトグルを入れます。
   [Polymer Available]
      [Number]
         選択したポリマーの本数を指定します。
      [Display]
         選択したポリマーをメインウインドウに表示します。
      [Delete]
         指定したポリマーのファイル削除します。
   [Add]
      選択したポリマーをPolymers Usedリストに反映させます。
   [Delete]
      選択したポリマーをPolymers Usedリストから削除します。
   [Build]
      シミュレーションセルを作成します。
   [Close]
      ウインドウを閉じます。

モノマー割り付け
------------------------
   DPD粒子に対し登録したモノマーを割り付け、全原子MDの分子構造を取得します。

.. _md_polymer_pref:

設定
-------
   モノマーおよびポリマーを登録するフォルダを指定します。

   [Monomer(\*.wmo)Folder]
      モノマーファイルの保存先フォルダを指定します。
   [Polymer(\*.wpo)Folder]
      ポリマーファイルの保存先フォルダを指定します。
   [OK]
      設定内容を保存してウインドウを閉じます。
   [Cancel]
      設定内容を破棄してウインドウを閉じます。
