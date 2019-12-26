.. _commandline_top:

コマンドプロンプトからの実行方法
============================================

| コマンドプロンプトから各種のオプションを指定して起動することが可能です。
| オプションに入力ファイル名と処理内容を指定します。
| 指定できる処理内容は、以下の通りです。

.. list-table::

   * - MOPACの実行
     - | -mopac1, -mopac2, -mopac3
       | (それぞれ :ref:`preferences_top` :menuselection:`--> プログラムパス` において選択した3種のMOPACバイナリに対応)
   * - 分子表面積・体積の計算
     - -molsv
   * - アスペクト比の計算
     - -aspect
   * - 座標調整
     - -adjust
   * - 水素付加
     - -hadd
   * - 水素削除
     - -hdel
   * - 簡易構造最適化
     - -clean
   * - ファイル形式を変更して保存
     - -o output_file_extension
   * - ファイル名を指定して保存
     - -outfile output_file_name

使用例:

   "C:\winmos9\winmostar.exe" "C:\winmos9\samples\dbt.dat" -s -mopac1
   "C:\winmos9\winmostar.exe" "C:\winmos9\samples\dbt.dat" -s -molsv 1 2.0 0.02
   "C:\winmos9\winmostar.exe" "C:\winmos9\samples\dbt.dat" -s -o pdb
   "C:\winmos9\winmostar.exe" "C:\winmos9\samples\dbt.dat" -s -adjust -hadd -clean -o gjf 

| 初期入力ファイルを第一引数に指定します。
| -sを指定した時は処理後に自動的にWinmostarが終了するので、DOSのBATファイルを記述し、MOPAC等を連続的に実行することができます。Samples\\wmjobs.batを参考にしてください。
| -sを除く-から始まるコマンドは指定した順に実行されます。
| GaussianとGAMESSを連続実行する場合は、この方法ではなく :menuselection:`ツール --> 連続実行` を使用します。


