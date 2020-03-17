ChemDrawとの連携
============================================

ChemDrawでモデリングされた分子をWinmostarに読み込むことができます。

SMILES形式で読み込む場合
----------------------------

操作手順は以下の通りです。

#. ChemDrawで分子をモデリングした後、 :menuselection:`Edit --> Copy As --> SMILES` をクリックします。
#. Winmostarで :menuselection:`ファイル --> インポート --> SMILES` をクリックし、 :guilabel:`Enter SMILES` の欄に先ほどコピーした文字列をペーストします。
#. :guilabel:`Import` ボタンをクリックすると、メインウィンドウに分子がモデリングされます。

mol形式で読み込む場合
-------------------------

操作手順は以下の通りです。

#. ChemDrawで分子をモデリングした後、 :menuselection:`File --> Save As` をクリックし、MDL MolFile形式を選択しファイルを保存します。
#. Winmostarで先ほど保存したファイルを開きます。ChemDrawで出力したmolファイルには水素が含まれず、結合長も適切でないため、Winmostar上で自動的に結合長の調整と水素の付加が行われます。