
SDFファイルの編集
============================================

SDFファイルはマテリアルインフォマティクス、機械学習などに広く用いられているフォーマットです。

SDFファイルの可視化
-------------------------------

   :ref:`file_open` からSDFファイルを選択して開くと :ref:`animation_top` が開き、SDFファイル内の各構造を順番に確認することができます。

SDFファイルの編集
-------------------------------

   1. 上記の方法でSDFを開いた後、 :ref:`animation_top` の :menuselection:`File --> Export All Frames Separately` を選択すると、各構造を選択したフォルダの中に個別のファイルとして出力することができます。
   
      - SDFファイルの各構造に対して結合長の調整、水素の付加、簡易構造最適化を行いたい場合は、 :ref:`animation_top` の :menuselection:`Automation --> Check All` をクリックしてから :menuselection:`File --> Export All Frames Separately` を実行してください。 
      - Gaussianの入力ファイル(gjfファイル)を出力したい場合は、 :menuselection:`File --> Export All Frames Separately` を実行する前に :ref:`qm_gaussian_keyword` を実行してください。
      
   2. その後、各構造に対応するファイルを :ref:`file_open` またはWinmostarにドラッグアンドドロップして開き、編集し、 :ref:`file_save` から上書き保存します。
   3. :ref:`tools_composesdf` から先ほど出力したフォルダを選択すると、再びSDFファイルを作成することができます。