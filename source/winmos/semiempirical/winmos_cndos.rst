.. include:: ../../common.rst

.. _semiempirical_cndos_top:

:menuselection:`半経験QM --> CNDO/S` メニュー
==================================================

   日本コンピュータ化学会に登録されている旧JCPEのP083のGUIを提供します。
   同プログラムのマニュアルは `こちら <https://winmostar.com/jp/manual_third_party/cndos_man.pdf>`_ です。
   Winmostarで使えるよう微修正し :file:`cndosw.exe` としてWinmostarに同梱されています。
   :file:`cndosw.exe` はgfortranでコンパイルされています。

.. _semiempirical_cndos_flow:

CNDO/S計算の処理の流れ
----------------------------

   1) 計算したい分子をメインウインドウで作成します。
   
   2) :ref:`semiempirical_cndos_keyword` にて計算条件を設定します。

   3) :ref:`semiempirical_cndos_start` を選んでCNDO/Sの入力ファイル（cnd）を保存すると、CNDO/Sが実行されます。計算結果はcndファイルと同名のlstファイルに出力されます。また、接尾辞が :file:`.cnd_temp` の作業ディレクトリに中間ファイルが収められます。一部の中間ファイル（ :file:`input_tmp.mgf` , :file:`mo_preplot1.txt` など）はcndファイルと同階層に生成されます。
   
   4) :ref:`semiempirical_cndos_uvvis` などを選択した時に、 :guilabel:`開く` ダイアログでデフォルトで選択されるファイルは、メインウインドウで開かれたファイルに紐づけられた結果ファイルとなります。
   
.. _semiempirical_cndos_keyword:

キーワード設定
------------------------

   CNDO/S計算用のキーワードを設定します。設定後 :guilabel:`Set` ボタンをクリックします。
   
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

.. _semiempirical_cndos_start:

CNDO/S実行
------------------------

   :ref:`semiempirical_cndos_flow` の内容に基づきCNDO/Sが実行されます。
   MOPAC6はWinmostarに内蔵されています。
   計算の終了後 :ref:`semiempirical_cndos_uvvis` が自動で実行されます。

.. _semiempirical_cndos_uvvis:

UV-Visスペクトル
---------------------

   CNDO/Sが出力したlstファイルを選択し、UV-Visスペクトルと分子軌道を表示します。
   サブウインドウの操作方法は :ref:`uvvis_top` および :ref:`mo_top` を参照してください。

lstファイル編集
---------------------

   CNDO/Sのログファイル（ :file:`\*.lst` ）をテキストエディタで開きます。

