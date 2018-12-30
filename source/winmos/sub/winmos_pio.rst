.. _pio_top:

PIO解析ウインドウ
============================================

   GAMESSまたはGaussianによるPIO (Paired Interacting Orbitals) 解析の設定と実行を行います。
   
   (1) Click the fragment...
   
      Set
         フラグメントを指定します。Aをクリックして選択した後Bをクリックし、[Set]ボタンをクリックします。
      Reset
         フラグメントの設定を解除します。
         
   (2) Save ab.inp ...
   
      Save
         合体系A-Bおよび孤立系A、B用のデータファイルを出力し保存します。
      Edit
         データファイルを編集します。
         
   (3) Gamess/GAMESS Exec
   
      Gauss/GAMESS
         Gaussian/GAMESSによる計算 を実行します。
      GenG
         バッチ・ファイルを作成します。
      GenP
         PIO用のデータファイルを作成します。
         
   (4) PIO
   
      PIO
         PIO計算を実行します。
      ISPC
         指定した数のピークについて波長と振動子強度の値を図の中に記入します。（長波長側から）
         
         0
            A, B 両フラグメントの全分子軌道を使って PIO をつくります。 
         1
            A, B 両フラグメントの被占分子軌道のみを使ってPIO をつくります。
            両フラグメント間に働く重なり反発(overlap repulsion, closed-shell repulsion)を表現します。
         2
            Aの被占分子軌道とBの空分子軌道のみを使って PIO をつくります。 
            AからBへの電子の非局在化(electron delocalization)を表現します。
         3
            Aの空分子軌道とBの被占分子軌道のみを使って PIO をつくります。 
            BからAへの電子の非局在化(electron delocalization)を表現します。
         Edit
            PIOによる出力ファイル(拡張子out)を編集します。
         Sum.
            サマリを表示します。
         Edit
            PIOによる出力ファイル(拡張子log)を編集します。
         MO
            分子軌道を表示するためのコマンド・ウィンドウを開きます。
            分子軌道の表示機能については、 :ref:`cube_top` を参照してください。
         Close
            このウィンドウを閉じます。 


