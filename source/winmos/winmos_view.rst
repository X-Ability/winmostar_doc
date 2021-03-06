.. include:: ../common.rst

.. _view_top:

表示メニュー
============================================

キーワード&座標表示エリアを表示
-----------------------------------
   メインウィンドウでキーワード表示エリアと座標表示エリアの表示・非表示を切り替えます。
   
.. _view_three:
   
三面図を表示
-------------------------------------------
   分子表示エリアを三面図表示にします。

表示をリセット
-------------------------------------------
   カメラをデフォルト位置に戻します。

表示方向を変更
-------------------------------------------
   カメラの視線の方向を変更します。

拡大/縮小
-------------------------------------------
   視野を拡大または縮小します。

常に中心を注視
-------------------------------------------
   ここにチェックが入っている場合は、表示されている分子構造が変化しても、常にその時点での重心がカメラの注視点となります。入っていない場合は、明示的に視線を変更しない限り注視点が変化しません。

.. _view_always_view_center:

選択原子を注視
-------------------------------------------
   マーカー（太赤丸）で付いた原子を注視点に指定します。

平行移動
-------------------------------------------
   メインウィンドウで左ドラッグすると、視線が平行移動します。

回転
-------------------------------------------
   
自由回転
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   メインウィンドウで左ドラッグすると、注視点を中心にカメラが回転します。

X, Y, Z軸周りで回転
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   メインウィンドウで左ドラッグすると、各軸の周りでカメラが回転します。

表示を回転
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   メインウィンドウで左ドラッグすると、表示が回転します。

表示プリセット
-------------------------------------------
   表示の設定を一括で保存・読み込みします。
   
遠近法を使用
-------------------------------------------
   ここにチェックが入っている場合は、分子表示エリアに遠近法が適用されます。
   
奥行き表現を使用
-------------------------------------------
   ここにチェックが入っている場合は、分子表示エリアにフォグが適用されます。手前と奥の原子の区別がつきやすくなります。フォグの強さは :ref:`preferences_top` にて設定できます。
   
光沢表現を使用
-------------------------------------------
   ここにチェックが入っている場合は、分子表示エリアで原子に光沢が掛かります。
   
.. _view_items:

表示項目
----------------------------------------
   分子表示エリアに表示する項目にチェックを入れます。

.. _view_labels_charges:

ラベル/電荷
----------------------------------------
   分子表示エリアにおいて、各原子の脇にラベル（注釈）と、電荷の大きさを示す球を表示します。

   .. list-table:: 
   
      * - (ラベル/電荷を隠す)
        - ラベルと電荷の表示を隠します。（初期状態）
      * - 番号&元素
        - 原子の通し番号と元素名を表示します。
      * - 番号
        - 原子の通し番号を表示します。
      * - 元素
        - 元素名を表示します。
      * - Mulliken電荷
        - 各種ログファイルを開いた際に読み込まれるMulliken電荷を表示します。
      * - ESP電荷
        - 各種ログファイルを開いた際に読み込まれるESPまたはRESP電荷を表示します。
      * - Lowdin電荷
        - 各種ログファイルを開いた際に読み込まれるLowdin電荷を表示します。
      * - NBO電荷
        - 各種ログファイルを開いた際に読み込まれるNBO(Natural Bond Orbital)電荷を表示します。
      * - User電荷
        - | :menuselection:`編集 --> 属性を変更 -->` :ref:`edit_property_charge` や
          | :menuselection:`MD --> 電荷を割り当て` などの機能でユーザが割り当てた電荷を表示します。
      * - スピン密度
        - | 各種ログファイルを開いた際に読み込まれるスピン密度や
          | :menuselection:`編集 --> 属性を変更 -->` :ref:`edit_property_charge` で割り当てたスピン密度を表示します。
      * - 差電子密度
        - 差電子密度を表示します。

双極子/遷移モーメント
----------------------------------------

双極子/遷移モーメントを表示
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   各種ログファイルを開いた際に読み込まれる双極子モーメントまたは遷移モーメントを表示します。

遷移モーメントを選択
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   表示する遷移モーメントを選択します。

スケールを変更
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   双極子/遷移モーメントを表示する際の大きさを指定します。

分子の表現形式
--------------------
   分子の表現方法（モデル）を選択します。

周期境界条件の表現形式
-------------------------
   セルが作成されている状態で、原子座標がセルの上端・下端よりも小さい値の場合の表示方法を示します。本機能で座標の値そのものは変化しません。 :menuselection:`編集 -->` :ref:`edit_wrap_pbc` を使うと本機能で表示されている原子の位置に座標の値を設定することができます。

Winmostar Viewer
-------------------------
   分子表示エリアで表示している構造を :ref:`winmos3d_top` を用いて表示します。

外部ビューア
-------------------------
   分子表示エリアで表示している構造を各種の外部プログラムで表示します。

Jmol
^^^^^^^^^^^^^^^^^^^^
   Jmolを起動します。

VRML
^^^^^^^^^^^^^^^^^^^^
   VRML形式のファイルを出力し、VRMLビューアを起動します。

Mercury
^^^^^^^^^^^^^^^^^^^^
   Mercuryを起動します。読込み中のファイルがCIFの場合はそのファイルを使用します。

ChemscapeChime
^^^^^^^^^^^^^^^^^^^^
   MDL Chimeを起動します。

レイトレーシング(POV-Ray)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   POV-Ray形式のファイルを出力し、POV-Rayを用いてレンダリングします。

OpenSCAD
^^^^^^^^^^^^^^^^^^^^
   OpenSCAD形式のファイルを出力し、OpenSCADを起動します。
   3Dプリンタ用のデータを作成できます。

画像をコピー
---------------
   分子表示エリアの画像をクリップボードにコピーします。

