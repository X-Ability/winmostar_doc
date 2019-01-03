
==================================
インストール方法
==================================

.. _install_supported_os:

対応OS
======================

Winmostarの対応OSは以下の通りです。

- Windows 10
- Windows 8
- Windows 7

Windows Serverの場合は、予めトライアル版などで動作検証した上でご使用下さい。

macOS、Linuxの場合は、VirtualBoxなどの仮想マシンでWindows OSをインストールした上でWinmostarを使用してください。これらの環境でネイティブ動作するバージョンは今後開発される予定です。

Winmostarをインストールする端末とは別のマシン（ :ref:`リモートサーバ <remote_top>` ）でジョブを実行する場合、 :ref:`セットアップ方法 <install_scheduler>` ではCentOS向けの手順が紹介されていますが、以下の機能を備えていれば基本的にはUbuntuなど、どのOSでも利用可能です。

   - SSH、SCPを用いた通信が可能で、UNIXコマンドを実行できる
   - :ref:`Winmostarが対応するジョブスケジューラ <remote_scheduler>` が動作する
   - Winmostarから使用する各種ソルバをインストールできる

.. _install_recommend_spec:

最小・推奨スペック
======================

Winmostarの最小スペックは以下の通りです。

- CPU・メモリ: Windows 7/8/10のシステム要件に準ず
- HDD: 4 GB以上の空き容量

推奨スペックは、Winmostar本体が比較的低いスペックのPCでも動作するため、一緒に使用するソルバーの推奨スペックに準じます。
ソルバーの推奨スペックが不明な場合は、ひとまず浮動小数点演算機能（コア数x周波数）が高いCPUのマシンを準備して下さい。
HDD、メモリは後から比較的容易に増設できるため、まずは標準的な容量で構いません。

.. _install_install:

インストール
==================================

インストール中に想定しない状況に遭遇した場合は :ref:`faq_top` を確認してください。

1. `ダウンロードページ <https://winmostar.com/jp/download_jp.html>`_ からインストーラ :file:`winmostar0_setup_X.X.X.exe` （ :file:`X.X.X` はバージョンを示す）をダウンロードし、実行します。

.. _intall_installwm:

2. インストール先フォルダを指定し（デフォルトは :file:`C:\\winmos9` ）インストールを開始すると、スタートメニューとデスクトップにショートカットが作成されます。

   .. warning::
      - インストール先フォルダおよびその上位階層の名前に日本語、全角文字などのマルチバイト文字や特殊記号が含まれている場合は、一部のモジュールが不具合を起こす場合があります。
      - ディスプレイ設定でテキストやその他の項目を拡大・縮小している場合は、一部表示が崩れる場合があります。

   .. note::
      - セキュリティ対策ソフトの警告が出た場合は、無視してインストールを継続してください（以下、同様）。
      - 既に過去のバージョンのWinmostarがインストールされている場合は、上書きインストールするか、インストール先フォルダを変更して過去のバージョンと共存させることが可能です。
      - 既にインストールされている他のWinmostarの設定を引き継ぐ場合は、インストール先フォルダの :file:`UserPref` フォルダの下のファイルをコピーしてください。

..

3. ライセンスコードを取得していない場合は、 `機能表 <https://winmostar.com/jp/function_jp.html>`_ にて使用する版を検討し、以下のリンク先からライセンスコードを登録または購入してください。

   - `無償版 <https://winmostar.com/jp/index.php>`_
   - `学生版 <https://winmostar.com/jp/index.php>`_
   - `プロフェッショナル版（トライアル） <https://winmostar.com/jp/dlTrialFormJP.php>`_
   - `プロフェッショナル版 <https://winmostar.com/jp/purchase_jp.html>`_

..

4. 新規インストールの場合は、Winmostarを起動し、初回起動時に出現するダイアログでライセンスコードを設定します。

5. WinmostarをインストールしたWindows PC（ローカルマシン）上で使用するソルバを、以下のリンク先の手順でインストールします。

   - `Windows版GAMESSインストールマニュアル <https://winmostar.com/jp/GAMESS_install_manual_jp_win.pdf>`_
   - `Windows版NWChemインストールマニュアル <https://winmostar.com/jp/nwchem4wm_jp.html>`_
   - `Windows版LAMMPSインストールマニュアル <https://winmostar.com/jp/LAMMPS_install_manual_jp_win.pdf>`_
   - `Windows版NAMDインストールマニュアル <https://winmostar.com/jp/NAMD_install_manual_jp_win.pdf>`_
   - `Windows版Quantum ESPRESSOインストールマニュアル <https://winmostar.com/jp/QE_install_manual_jp_win.pdf>`_
   - `Windows版FDMNESインストールマニュアル <https://winmostar.com/jp/FDMNES_install_manual_jp_win.pdf>`_

   .. note::
      - Gromacs, Amber, MODYLAS, OpenMXは次のステップでインストールする :ref:`cygwin_wm <cygwinwm_top>` に含まれます。

.. _install_cygwinwm:

6. MD、Solidパックを使用、およびその他の一部の処理を実行する場合は、以下のいずれかの手順でWinmostar向けのCygwinの環境（ :ref:`cygwin_wm <cygwinwm_top>` と呼びます）を構築します。

   - **【推奨】** `ビルド済みのcygwin_wmをインストールする場合 <https://winmostar.com/jp/gmx4wm_jp.html>`_ 
   - `cygwin_wmをビルドする場合 <https://winmostar.com/jp/gmx4wm_jp_win.html>`_ （非推奨、上級者向け）
   - `Cygwinの代わりにWindows Subsystem for Linuxを用いる場合 <https://winmostar.com/jp/WSL_jp.html>`_ （ベータ版）

..

7. 必要に応じて、使用しているセキュリティ対策ソフトの設定において、Winmostarとcygwin_wmのインストールフォルダを監視対象から除外します。

.. _install_scheduler:

8. リモートサーバへのジョブ投入（ :ref:`リモートジョブ <remote_top>` と呼ぶ）を行う場合は、投入先のサーバに :ref:`対応しているジョブスケジューラ <remote_scheduler>` がインストールされているか確認する。入っていない場合は以下のリンク先の手順でTORQUEをインストールします。

   - `Linux版TORQUEインストールマニュアル <https://winmostar.com/jp/gmx4wm_jp_linux.html#Torque>`_

..

9. リモートジョブを行う場合は、投入先のサーバに使用するソルバを、以下のリンク先の手順でインストールします。

   - `Linux版NWChem, Gromacs, Amberインストールマニュアル <https://winmostar.com/jp/gmx4wm_jp_linux.html>`_
   - `Linux版GAMESSインストールマニュアル <https://winmostar.com/jp/GAMESS_install_manual_jp_linux.pdf>`_
   - `Linux版Gromacsインストールマニュアル（詳細版） <https://winmostar.com/jp/Gromacs_install_manual_jp_linux.pdf>`_
   - `Linux版LAMMPSインストールマニュアル <https://winmostar.com/jp/LAMMPS_install_manual_jp_linux.pdf>`_
   - `Linux版Quantum ESPRESSOインストールマニュアル <https://winmostar.com/jp/QE_install_manual_jp_linux.pdf>`_
   - `Linux版OpenMXインストールマニュアル <https://winmostar.com/jp/OpenMX_install_manual_jp_linux.pdf>`_

..

10. インストール手順は以上です。続けて、必要に応じて `ビギナーズガイド <https://winmostar.com/jp/tutorials/V8/BeginnersGuide_V8.pdf>`_ や `各種チュートリアル <https://winmostar.com/jp/manual_jp.html>`_ を確認して下さい。

また、必須ではありませんが、エクスプローラ上で各ファイルの拡張子を表示する設定に変更することを推奨します。

   Windows 7の場合:
      - エクスプローラを開く
      - :kbd:`Alt` キーを押す
      - :menuselection:`ツール --> フォルダーオプション` メニューの :guilabel:`表示` タブを開く
      - :guilabel:`登録されている拡張子は表示しない` のチェックが外れた状態にする
   
   Windows 8, 10の場合
      - エクスプローラを開く
      - :guilabel:`表示` タブを開く
      - :guilabel:`ファイル名拡張子` のチェックが付いた状態にする

アップデート
==================================

インストールと同じ方法でアップデート、バージョンアップ可能です。上書きインストールする場合は、上書き前のWinmostarを終了してからインストールしてください。

アンインストール
==================================

Winmostarのインストール先フォルダとショートカットの削除することでアンインストールできます。

