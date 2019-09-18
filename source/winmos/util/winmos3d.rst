
.. _winmos3d_top:

Winmostar Viewer
============================================

| Winmostar Viewerは分子軌道などを表示する、描画に特化したWinmostarの付属ソフトウェアです。
| MDのような多成分系で特定の成分だけを表示させることも可能です。

--------------
マウスの使い方
--------------

.. list-table::

   * - 左ボタン+ドラッグ
     - | 視点を回転させます。
       | ドラッグしながらマウスボタンを離すと回転し続けます。
   * - 右ボタン+上下ドラッグ
     - 縮小・拡大します。
   * - 左ボタン+右ボタン+ドラッグ
     - 上下･左右に移動します。

----------------
メニュー操作
----------------

Fileメニュー
--------------

Open
   gld形式およびMOLDA形式のファイルを読み込みます。
Save GLD
   現在開いているGLD形式のファイルを名前を付けて保存します。
Save MOLDA
   ウィンドウに表示されている構造をMOLDA形式で保存します。
Save JPEG
   ウィンドウに表示されている内容をJPEGファイルとして保存します。
Save JPEG (Stereo)
   立体視用の左右の画面をJPEGファイルとして保存します。
StereoPhoto Maker
   StereoPhotomakerを起動します。
Exit
   Winmsotar Viewerを終了します。
   
Viewメニュー
------------

Representations
   描画の詳細な調整を行う :ref:`winmos3d_repre` を表示します。
Perspective
   遠近法を使用します。
Background Color
   背景の色を指定します。

   Winmostar Viewer
      背景の色を暗青色にします。
   Winmostar
      背景の色をWinmostarのデフォルトの背景色にします。
   Black
      背景の色を黒にします。
   White
      背景の色を白にします。
Model
   表示するモデルを選択します。

   Ball-and-Stick Model
      球棒モデルを表示します。
   Space-Filling Model
      空間充填モデルを表示します。
   Stick Model
      棒モデルを表示します。
   Wire Model
      ワイヤーモデルを表示します。
   Show SPace-Filling Model Overlapping
      空間重点モデルを半透明で重ね合わせ表示する。
Show Animation Control Panel
   :ref:`winmos3d_panel` を表示します。
Copy Image
   ウィンドウに表示されている画像をクリップボードにコピーします。

Helpメニュー
------------

Help
   マウスの使い方を表示します。
About Winmostar Viewer
   バージョンを表示します。
Debug
   メモリ使用量など、デバッグ用の情報を表示します。

.. _winmos3d_panel:

------------------------
アニメーション操作パネル
------------------------

Winmostar 3Dでアニメーションを表示すると、Winmostar 3Dのウィンドウの左上にアニメーション操作用のUIが表示されます。

スライダー
   フレームを移動します。
Once
   最終フレームまで再生が到達したら再生をストップします。
Loop
   最終フレームまで再生が到達したら最初のフレームに戻って再生を繰り返します。
Round
   再生を往復で繰り返します。
JPEG
   チェックを入れた状態で再生すると表示されている内容がJPEG形式で保存されます
GIF
   チェックを入れた状態で再生すると表示されている内容がGIF形式で保存されます
Close
   このパネルを閉じます。

.. _winmos3d_repre:

---------------------------
Representationsウィンドウ
---------------------------

Orbit/Rotation
   左ドラッグで視点を回転させる際の回転方法を指定します。
   
   Orbit
      自由に回転させます。
   X, Y or Z
      画面内水平方向、画面内垂直方向、または画面に垂直方向の軸周りで回転させます。
Periodic Boundary Condition
   セルの外側に存在する分子の表示方法を指定します。
   
   None
      元の座標のまま表示します。
   Atom
      原子単位でセル内に構造が収まるよう表示します。
   Mol
      分子単位でセル内に構造が収まるよう表示します。
Molecule
   本ウィンドウ中部の :guilabel:`1` から :guilabel:`9` を各分子に割り当てます。
Composition
   本ウィンドウ中部の :guilabel:`1` から :guilabel:`9` を（分子量が共通する）各分子種に割り当てます。
1 - 9
   チェックが付いた項目を表示します。プルダウンメニューの :guilabel:`BS` , :guilabel:`SF` , :guilabel:`ST` , :guilabel:`WI` はそれぞれBall-stick（棒球）モデル（デフォルト）、Space filling（空間充填）モデル、Stick（棒）モデル、ワイヤーモデルを意味します。
Rainbow
   分子ごとに異なる色で表示します。
Gold
   分子を金色で表示します。
Stereo
   立体視表示します。
Enantiomer
   元の構造とその鏡像体を表示します。
Para
   平行法で表示します。
Cross
   交差法で表示します。
Anag
   アナグリフで表示します。（赤青のメガネを使用）
Shift
   分子間の距離を指定します。
Rot
   分子の回転する大きさを指定します。
H
   チェックされている場合は、水素原子を表示します。
Dummy
   チェックされている場合は、ダミー原子を表示します。
Backbone
   チェックされている場合は、バックボーンのみを表示します。（タンパク質向け）
Atom
   原子の表示倍率を設定します。
Bond
   結合の表示倍率を設定します。
Z-Clip
   Z方向のクリッピング位置を指定します。
Surface Style
   分子軌道などの等値面の表示方法を指定します。
   
   Mesh
      等値面をメッシュ（格子）モデルで表示します。
   Solid
      等値面をソリッドモデルで表示します。
   SmoothSolid
      等値面を滑らかなソリッドモデルで表示します。
Trans
   等値面の透明度を指定します。 （0: 不透明、1: 透明）
X, Y, Z
   分子軌道などのメッシュ（スカラー場）情報が読み込まれた場合、チェックを入れた面に対しコンターマップ（等高線）を描画します。コンターマップの位置はスライダーで調整可能です。
