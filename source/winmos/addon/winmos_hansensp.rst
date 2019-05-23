
Hansen SP & QSPRモデル
----------------------
   原子団寄与法によりハンセンの溶解度パラメータ（HSP）を計算します。
   また、原子団寄与法とQSPR（構造物性相関）モデルにより各種物性を計算します。

   使用するためにはアドオンの購入が必要です。

   1. HSPや各種物性を求めたい分子をメインウィンドウで作成した後、本メニューをクリックします。ポリマーの場合はリピートユニット（例えばポリエチレンの場合はエタン分子）を作成し、隣のリポートユニットと結合する2か所を続けて左クリックしておきます。この挙動はポリマービルダ機能のモノマー登録と同じです。
   2. 分子の場合は :guilabel:`Calc Hansen SP` ボタン、ポリマーの場合は :guilabel:`Calc Hansen SP for Polymer` ボタンをクリックします。
   3. HSPや各種物性が記されたcsvファイルが作成されます。csvファイルの各項目の意味は以下の通りです。

   .. list-table::
      :header-rows: 1
      :stub-columns: 1

      * - 表示名
        - 意味
      * - totHSP
        - | Sqrt((dD14)^2+(dP14)^2+(dH14)^2)
          | （Hildebrandの溶解度パラメータに相当）
      * - dD14
        - HSP分散項
      * - dP14
        - HSP分極項
      * - dH14
        - HSP水素結合項
      * - dHdo14
        - HSP水素結合項（ドナー）
      * - dHac14
        - HSP水素結合項（アクセプター）
      * - polym_totHSP
        - | Sqrt((polym_dD14)^2+(polym_dP14)^2+(polym_dH14)^2)
          | （Hildebrandの溶解度パラメータに相当）
      * - polym_dD14
        - HSP分散項（ポリマー向け）
      * - polym_dP14
        - HSP分極項（ポリマー向け）
      * - polym_dH14
        - HSP水素結合項（ポリマー向け）
      * - polym_dHdo14
        - HSP水素結合項（ドナー）（ポリマー向け）
      * - polym_dHac14
        - HSP水素結合項（アクセプター）（ポリマー向け）
      * - Boiling Point
        - 沸点
      * - Melting point
        - 融点
      * - Log10(Viscosity)
        - 対数粘度
      * - Standard enthalpy of formation
        - 標準生成エンタルピー
      * - Standard Gibbs free energy of formation
        - 標準ギブスエネルギー

   計算されるHSPや各種物性は原子団寄与法により算出されています。
   算出に対応している原子団（官能基）は `こちら <https://www.pirika.com/NewHP-J/JP2/FunctionalG.html>`_ に記されています。
   総原子数は最大250、水素を除く原子数は120まで計算可能です。

