.. include:: ../../common.rst

.. _solid_phonopy_top:

:menuselection:`固体 --> Phonopy` メニュー
=====================================================

   Phonopyに関するメニューです。
   
概要
------------------------
   Phonopyでは、以下の3つの工程で計算を行います。

   1. 与えられたQuantum ESPRESSOインプットファイルを元にスーパーセルを作成する。 (プリ処理)
   2. 生成された全てのスーパーセルに対し、Quantum ESPRESSOを実行する。
   3. Quantum ESPRESSOのアウトプットファイルから、ForceSetsファイルを作成し、
      Phononバンド、DOS、熱物性などの計算を行う。(ポスト処理)

キーワード設定・実行
------------------------

   Phonopyを用いたプリ・ポスト処理の計算条件を設定し、プリ処理の実行を行います。
   
   :guilabel:`Open` ボタン

      Quantum ESPRESSOのインプットファイル (*.in, *.pwin)を読み込みます。
      Phonopyでのポスト処理では、応力の情報を必要とします。このため読み込むファイルは
      tprnfor, tstressキーワードを含んでいる必要があります。
      Phonopy用のQuantum ESPRESSOのインプットファイルは、
      Quantum ESPRESSOキーワード設定のPreset=Phonopyを使用することで設定できます。
      
   DIM
      スーパーセルのx, y, z方向のリピート回数を半角スペース区切りで指定します。

   MP
      PhonopyでPhonon DOSや熱物性の計算を行う際の逆格子を半角スペース区切りで指定します。

   ATOM_NAME
      単位格子に含まれる元素を半角スペース区切りで指定します。
      :guilabel:`Open` ボタンでインプットファイルを開いた時点で自動的に入力されます。

   :guilabel:`Start` ボタン

      設定条件を元にPhonopyを実行し、プリ処理であるスーパーセルの作成を実行します。
      このとき、以下のファイルとフォルダが生成されます。
   
      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | batファイル
             | :file:`si.bat`
           - Phonopyのプリ処理を実行するためのバッチファイルです。
         * - | shファイル
             | :file:`si.sh`
           - Phonopyのプリ処理を実行するためのシェルスクリプトファイルです。
         * - | si_ph_dataフォルダ
             | :file:`si_ph_data`
           - 計算の作業ディレクトリです。

      作業ディレクトリsi_ph_dataには以下のファイルが生成されます。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | mesh.confファイル
             | :file:`mesh.conf`
           - Phonopyのポスト処理にて、状態密度や熱物性を計算するときに使用されます。
         * - | band.confファイル
             | :file:`band.conf`
           - Phonopyのポスト処理にて、バンド構造を計算するときに使用されます。
         * - | headerファイル
             | :file:`header.in`
           - | si.pwinで指定された構造情報以外のキーワード情報が記載されています。
         * - | supercellファイル
             | :file:`supercell-＊.in`
           - | Phonopyにより生成されたスーパーセルの情報がQuantum ESPRESSOのインプットファイル形式で記載されています。
             | スーパーセルのパターンは複数生成されるため、＊の部分には1, 2, などの数字が入ります。
         * - | tmpファイル
             | :file:`tmp-*.in`
           - | header.inとsupercell-*.inを結合したファイルです。

   :guilabel:`Cancel` ボタン

      何もせずにキーワード設定・実行ウィンドウを閉じます。


confファイル編集...
----------------------------

   confファイルをテキストエディタで開きます。
   キーワード設定画面で設定したキーワードを編集したい場合に用います。
   
Quantum ESPRESSO連続実行
------------------------

   キーワード設定・実行画面で生成された、全てのスーパーセルに対し、Quantum ESPRESSOを実行します。
   このメニューを用いた場合、Quantum ESPRESSOはローカル環境で実行されます。

           
Phonopyの実行...
------------------------

   Phonopyのポスト処理を実行します。

   この時、作業フォルダ :file: si_ph_data に以下のファイルが生成されます。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | shファイル
             | :file:`phonopy.sh`
           - Phonopyのポスト処理を実行するためのシェルスクリプトです
         * - | band.yamlファイル
             | :file:`band.yaml`
           - Phonopyのポスト処理で計算されたバンド構造の情報が出力されています。
         * - | dos.datファイル
             | :file:`dos.dat`
           - Phonopyのポスト処理で計算された状態密度の情報が出力されています。
         * - | thermal_properties.yamlファイル
             | :file:`thermal_properties.yaml`
           - Phonopyのポスト処理で計算された熱物性の情報が出力されています。

バンド構造...
------------------------

   作業フォルダに含まれるband.csvをもとにバンド構造を表示します。

状態密度...
------------------------

   作業フォルダに含まれるtoal_dos.csvをもとに状態密度を表示します。

熱物性...
------------------------

   作業フォルダに含まれるthermal_properties.csvをもとに熱物性を表示します。

