.. include:: ../../common.rst

.. _solid_boltztrap_top:

:menuselection:`固体 --> BoltzTraP` メニュー
=====================================================

   BoltzTraPに関するメニューです。
   
概要
------------------------
   BoltzTraPでは、QuantumESPRESSOでのnscf計算のアウトプットをもとに熱電特性の計算を行います。

キーワード設定・実行
------------------------

   BoltzTraPを用いたプリ・ポスト処理の計算条件を設定し、プリ処理の実行を行います。
   
   :guilabel:`Create .intransファイル` ボタン

      Quantum ESPRESSOのnscf計算のアウトプットファイル (*.pwout)を読み込み、BoltzTraP設定ファイル（*.intrans）を生成します。
      アウトプットファイルを仮にmg2si_nscf.pwoutとすると、同じ階層にmg2si_nscfという名前の作業ディレクトリを生成します。
      mg2si_nscf.intransはmg2si_nscf内に生成されます。

      intransファイルの作成に成功した場合、ファイルの内容を読み込み、下記キーワードの入力欄に反映します。
      
   Fermilevel (Ry)
      pwoutファイルから読み込んだフェルミエネルギーが設定されています。

   energy grid
      設定エネルギーの間隔を指定します。
      
   energy span
      フェルミレベル周辺の計算に考慮に入れるバンドエネルギーの範囲を指定します。
      
   number of electrons
      単位格子内の電子の個数を指定します。
      
   lpfac
      バンドエネルギーをフーリエ展開によって補完する際の因子を指定します。
      
   efcut
      化学ポテンシャルを変えて計算する範囲を指定します。
      
   Tmax
      設定温度の上限値を指定します。
   
   temperature grid
      設定温度の間隔を指定します。
   
   energy of bands
      DOSから得られたバンドのエネルギー幅を指定します。
      
   Calculate expansion coeff
      チェックが入っている場合、膨張係数を計算を計算します。

   :guilabel:`Start BoltzTraP` ボタン

      設定条件を元にintransファイルを再作成し、BoltzTraPを実行します。
      このとき、以下のファイルとフォルダが生成されます。
   
      下記では、計算終了時点での作業ディレクトリ（mg2si_nscf）内の主なファイルを記載します。

      .. list-table::
         :header-rows: 1
         :stub-columns: 1

         * - 種類
           - 説明
         * - | .intfansファイル
             | :file:`mg2si_nscf.intrans`
           - BoltzTraPのインプットファイルです。
         * - | .traceファイル
             | :file:`mg2si_nscf.trace`
           - BoltzTraPで計算された熱電特性のエネルギー、温度依存性に関する情報が出力されたファイルです。
             BoltzTraP結果読み込み...メニューではこのファイルを読み込み可視化を行います。

   :guilabel:`Cancel` ボタン

      何もせずにキーワード設定・実行ウィンドウを閉じます。

BoltzTraP結果読み込み...
----------------------------

   BoltzTraPによって計算された下記の熱電特性を読み込み、可視化を行います。
   
   * ゼーベック係数（Seebek coefficient）、
   * 電気伝導度 (Electrical conductivity), 
   * 熱伝導率(Electrical thermal conductivity),
   * 出力因子(Power factor)
   * 性能指数（Figure of merit）

   各温度における特性値のエネルギー依存性を表示したい場合はコンボボックスからT [K]を選択し、リストから目的の温度を選択します。
   各エネルギーにおける特性値の温度依存性を表示したい場合はコンボボックスからE-Ef [eV]を選択し、リストから目的のエネルギーを選択します。