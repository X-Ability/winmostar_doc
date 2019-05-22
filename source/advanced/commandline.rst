コマンドプロンプトからの実行方法
============================================

| コマンドプロンプトから各種のオプションを指定して起動することが可能です。
| オプションに入力ファイル名と処理内容を指定します。
| 指定できる処理内容は、以下の通りです。

.. list-table::

   * - MOPACの実行
     - | -mopac1, -mopac2, -mopac3
       | (それぞれ :ref:`preferences_top` :menuselection:`--> プログラムパス` 
       | において選択した3種のMOPACバイナリに対応)
   * - 分子表面積・体積の計算
     - -molsv
   * - アスペクト比の計算
     - -aspect
   * - ファイル形式の変換(dat,gjf,mol,pdb等)
     - -o (output filename)

使用例::

   "C:\winmos7\winmostar.exe" "C:\winmos7\samples\dbt.dat" -mopac1
   "C:\winmos7\winmostar.exe" "C:\winmos7\samples\dbt.dat" -molsv 1 2.0 0.02
   "C:\winmos7\winmostar.exe" "C:\winmos7\samples\dbt.dat" -o pdb
   "C:\winmos7\winmostar.exe" "C:\winmos7\samples\dbt.dat" -o gjf adjust hadd clean

| 実行プログラムを指定した時は処理後に自動的にWinmostarが終了するので、DOSのBATファイルを記述し、MOPAC等を連続的に実行することができます。
| -oオプションでファイル形式を変換する際に、「adjust」(座標調整)、「hadd」(水素付加)、「hdel」(水素削除)、「clean」(クリーン)を指定することもできます。
| samplesフォルダのwmjobs.batに使用例があります。
| GaussianとGAMESSを連続実行する場合は、この方法ではなく :menuselection:`ツール --> 連続実行` を使用します。


