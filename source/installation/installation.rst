
==================================
インストール・アップデート方法
==================================

インストール方法
==================================

インストール中に想定しない状況に遭遇した場合は :ref:`faq_top` を確認してください。

1. `ダウンロードページ <https://winmostar.com/jp/download_jp.html>`_ からインストーラ :file:`winmostar0_setup_X.XXX.exe` （ :file:`X.XXX` はバージョンを示す）をダウンロードし、実行します。

   .. note::
      - マシンの推奨スペックはソルバの推奨スペックにに準じますが、分からない場合は :ref:`intro_recommend_spec` を参照してください。

.. _intall_installwm:

2. インストール先フォルダを指定し（デフォルトは :file:`C:\\winmos8` ）インストールを開始すると、スタートメニューとデスクトップにショートカットが作成されます。

   .. warning::
      - インストール先フォルダおよびその上位階層の名前に日本語、全角文字などのマルチバイト文字や特殊記号が含まれている場合は、一部のモジュールが不具合を起こす場合があります。
      - ディスプレイ設定でテキストやその他の項目を拡大・縮小している場合は、一部表示が崩れる場合があります。
      - :ref:`intro_supported_os` 以外のOS、例えばWindows Serverでは一部機能で不具合が起こる場合があります。

   .. note::
      - セキュリティ対策ソフトの警告が出た場合は、無視してインストールを継続してください（以下、同様）。
      - 既に過去のバージョンのWinmostarがインストールされている場合は、上書きインストールするか、インストール先フォルダを変更して過去のバージョンと共存させることが可能です。
      - 既にインストールされている他のWinmostarの設定を引き継ぐ場合は、インストール先フォルダの :file:`UserPref` フォルダの下のファイルをコピーしてください。
      - USBメモリへのインストール、USBメモリ上での実行も可能です。

..

3. ライセンスコードを取得していない場合は、 `機能表 <https://winmostar.com/jp/function_jp.html>`_ にて使用する版を検討し、以下のリンク先からライセンスコードを登録または購入してください。

   - `無償版 <https://winmostar.com/jp/index.php>`_
   - `学生版 <https://winmostar.com/jp/index.php>`_
   - `トライアル版 <https://winmostar.com/jp/dlTrialFormJP.php>`_
   - `プロフェッショナル版 <https://winmostar.com/jp/purchase_jp.html>`_

..

4. 新規インストールの場合は、Winmostarを起動し、初回起動時に出現するダイアログでライセンスコードを設定します。

..

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

アップデート方法
==================================

インストールと同じ方法でアップデート、バージョンアップ可能です。上書きインストールする場合は、上書き前のWinmostarを終了してからインストールしてください。

アンインストール方法
==================================

Winmostarのインストール先フォルダとショートカットの削除することでアンインストールできます。

