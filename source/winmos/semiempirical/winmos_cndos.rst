.. include:: ../../common.rst

.. _semiempirical_cndos_top:

:menuselection:`半経験QM --> CNDO/S` メニュー
==================================================

   CNDO/Sプログラムに関するメニューです。
   
   CNDO/SプログラムはWinmostarに同梱されています。
   CNDO/Sプログラムは旧日本化学プログラム交換機構（JCPE、現在の日本コンピュータ化学会）に登録されていたP083プログラムを、Winmostarに対応させるために微修正したものです。
   P083のマニュアルは `こちら <https://winmostar.com/jp/manual_third_party/cndos_man.pdf>`_ から入手可能です。
   CNDO/Sプログラム（ :file:`cndosw.exe` ）はgfortranでコンパイルされています。

.. _semiempirical_cndos_keyword:

キーワード設定
------------------------

   CNDO/Sの計算条件を設定します。設定後、すぐに計算を実行する場合は :guilabel:`Run` ボタン、一旦メインウインドウに戻る場合は :guilabel:`OK` ボタンを押してください。
   
   Method
      計算方法を指定します。（CNDOまたはINDO） 
   Multiplicity
      多重度を指定します。
   Basis set
      基底関数を指定します。（SPまたはSPD） 
   BONDS
      結合次数を出力することを指定します
   NOINTER
      チェックを入れた場合は原子間距離を出力しません。
   SHORT
      簡略化されたログを出力します。
   OUTMO
      MOLMOL2用のファィルを出力します。
   Repulsion integral
      反発積分の式を指定します。
         - Pariser
         - 大野
         - 西本-又賀
         - 理論式
   Nuclear repulsion energy
      核間反発エネルギーの式を指定します。
         - Za * Zb / 1
         - Za * Zb * γab 
   PKAPPA
      p電子に対するkappaの値を指定します。
   DKAPPA
      d電子に対するkappaの値を指定します。
   Charge
      電荷を指定します。
   # of CI
      励起状態のCI 計算に含める状態の数を指定します。（上限 500） 
   # of excited states
      結合次数を出力する励起状態の数を指定します。

キーワード読み込み
------------------------
   既存のCNDO/Sの入力ファイルから、キーワード（計算条件）のみを読み込みます。

.. _semiempirical_cndos_start:

実行
------------------------

   メインウインドウでCNDO/Sの入力ファイルが開かれている場合は、そのファイルを使ってCNDO/Sを実行します。
   開かれていない場合は、CNDO/Sの入力ファイルを保存した上でCNDO/Sを実行します。
   
   実行に伴い以下のファイルが生成されます。
   例として入力ファイルが :file:`water.cnd` の時のファイル/フォルダ名を併記しています。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | lstファイル
             | :file:`water.lst`
           - 計算のログが出力されたテキストファイルです。
         * - | 作業ディレクトリ
             | :file:`water.cnd_temp\\`
           - | 作業ディレクトリです。

ログを表示 (lst)
---------------------

   lstファイルをテキストエディタで開きます。

.. _semiempirical_cndos_uvvis:

UV-Visスペクトル
---------------------

   lstファイルを選択し、UV-Visスペクトルと分子軌道を表示します。
   
   サブウインドウの操作方法は :ref:`uvvis_top` , :ref:`mo_top` , :ref:`cube_top` を参照してください。

