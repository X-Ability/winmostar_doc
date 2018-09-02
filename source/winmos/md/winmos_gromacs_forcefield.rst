Force Field
   Generate Parameters
      メインウインドウに表示された系に対し、新たに力場パラメータをアサインしトポロジファイル（topファイル）を作成します。
      
      Force field
         (General)
            タンパク質、水分子以外の分子の力場を指定します。
            内部では、GAFF, OPLS/AA-Lの場合は :command:`acpype` が、Dreidingの場合は内製プログラムが使用されます。
            Dreidingの設定は :file:`polymer/dreiding.lib.txt` に書かれています。

            Exception
               特定の分子に対し、(General)にて選択した力場を使わず、ユーザが指定するLJパラメータを割り当てます。
               サブウインドウの左の欄にてLJパラメータを指定したい分子にチェックを入れ、右の欄でLJパラメータを入力します。
               
               .. note::
               
                  例えば固液界面系において固相の原子にLJパラメータを割り振りたい時などに使用します。

         (Protein)
            タンパク質の力場を指定します。ここで、PDBやgroフォーマットにおいてアミノ酸残基の名前が割り当てられている原子がタンパク質として認識されます。内部的には :command:`gmx pdb2gmx` が使用されます。
            
            .. warning::
               残基名を含まないファイルから分子構造を読み込んだ場合は本機能を使用できません。
         (Water)
            水分子の力場を指定します。 :ref:`md_solvate_buildcell` で選択した水モデルを指定する必要があります。内部的にはCygwinにインストールされたGromacsのトポロジのライブラリからパラメータを取得します。
      Charge
         Assign Charges
            :command:`acpype` により算出する電荷を用いてトポロジファイルを作成します。 :guilabel:`Method` にはその方法を指定します。
            
            .. warning::
               ポリマーの場合は :command:`acpype` による電荷の算出に時間がかかるため、あらかじめポリマービルダを用いて系を作成し、 :guilabel:`Use User-defined Charge` にチェックを入れてください。
            
         Use User-defined Charge
            メインウインドウ上で設定されている各原子の点電荷の値を用いてトポロジファイルを作成します。
            
            .. note::
               メインウインドウ上で設定されている点電荷の値は、 :ref:`表示ボタンエリア <gui_main>` のアノテーションボタンから :guilabel:`User Charge` などを選択するか、.mol2形式で保存し :ref:`file_editor` で開くことにより確認できます。
               
      Add [position_restraints] for Protein
         タンパク質が存在する場合は :guilabel:`Advance` タブにおける :guilabel:`-POSRES` で位置を拘束するための情報（ ``[position_restraints]`` セクション）をトポロジファイルに書き込みます。タンパク質が存在しない場合は無視されます。
         
      Add [position_restraints] for selected atoms
         ユーザが指定する分子に対し、 :guilabel:`Advance` タブにおける :guilabel:`-POSRES` で位置を拘束するための情報（ ``[position_restraints]`` セクション）をトポロジファイルに書き込みます。
         例えば固液界面系に於いて固相を固定する場合などに使用します。
         
      Add [distance/angle/dihedral_restraints] for selected atoms
         ユーザが指定する分子に対し、 :guilabel:`Advance` タブにおける :guilabel:`-POSRES` で距離・角度・二面角を拘束するための情報をトポロジファイルに書き込みます。
         
   Dump Now
      現在の設定に基づき、トポロジファイルを生成します。
      
      .. note::
      
         - :guilabel:`Load from Existing File` を選択しない場合はソルバの実行時に自動的にトポロジファイルが生成されるため、この操作は必須ではありません。
         - トポロジファイルをエディタ等で編集してカスタマイズしたい場合は、本機能を使用して保存した上で、 :guilabel:`Load from Existing File` にて選択してください。
      
   Load from Existing File / Use parameters in the file on the main window
      既に存在しているトポロジファイルを用いてMD計算を実行する場合に選択します。

      Edit
         選択されたトポロジファイルをテキストエディタで編集する。
   Generate Simulation Cell
      メインウインドウにおいてシミュレーションセルが定義されていない場合のみ設定が有効となる。チェックが入っている場合は、メインウインドウに表示された分子の周囲に :guilabel:`Distance` で指定された距離だけ離れた場所にシミュレーションセルを自動発生させる。
