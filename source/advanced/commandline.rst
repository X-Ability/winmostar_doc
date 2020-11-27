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
   * - :ref:`tools_molesurf`
     - -molsv
   * - :ref:`tools_aspect`
     - -aspect
   * - :ref:`edit_auto_bondlength`
     - -adjust
   * - :ref:`edit_addh_all`
     - -hadd
   * - :ref:`edit_delh`
     - -hdel
   * - :ref:`edit_clean`
     - -clean
   * - :ref:`md_charge_resp` （1分子のみ対応）
     - -resp
   * - :ref:`md_solvate_buildcell` （第一引数は無視されます）
     - -pack (分子種1のファイル名):(分子種1の個数):(分子種2のファイル名):(分子種2の個数)(以降、同様に列挙) (密度[g/cm^3])
   * - LAMMPSの計算（ローカルジョブ）
     - -lammps (力場の種類) (1つ目のジョブのプリセット名または設定ファイル名):(2つ目のジョブのプリセット名または設定ファイル名):(以降、同様に列挙) (並列数)
   * - ファイル形式を変更して保存
     - -o output_file_extension
   * - ファイル名を指定して保存
     - -outfile output_file_name

使用例:

   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\dbt.dat\" -s -mopac1
   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\dbt.dat\" -s -molsv 1 2.0 0.02
   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\dbt.dat\" -s -o pdb
   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\dbt.dat\" -s -adjust -hadd -clean -o gjf 
   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\ch4.mol2\" -s -pack ch4.mol2:100:ethanol_am1.mol2:2 0.6 -outfile ch4_100_etoh_2.mol2
   \"C:\\winmos10\\winmostar.exe\" \"C:\\winmos10\\samples\\ch4_100_etoh_2.mol2\" -s -lammps "Dreiding" "Minimize (fast):NVT (fast):NPT (fast)" 2

| 初期入力ファイルを第一引数に指定します。
| -sを指定した時は処理後に自動的にWinmostarが終了するので、DOSのBATファイルを記述し、MOPAC等を連続的に実行することができます。Samples\\wmjobs.batを参考にしてください。
| -sを除く-から始まるコマンドは指定した順に実行されます。
| GaussianとGAMESSを連続実行する場合は、この方法ではなく :menuselection:`ツール --> 連続実行` を使用します。


