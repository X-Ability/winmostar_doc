
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

Windows Serverの場合は、予め無償版またはトライアルをご入手頂き、動作検証した上でご使用下さい。

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

一般的な事務作業、ネットサーフィンなどをする程度のパソコンでも動作します。

推奨スペックは、Winmostar本体が比較的低いスペックのPCでも動作するため、一緒に使用するソルバーの推奨スペックに準じます。
ソルバーの推奨スペックが不明な場合は、ひとまず浮動小数点演算機能（コア数x周波数）が高いCPUのマシンを準備して下さい。
HDD、メモリは後から比較的容易に増設できるため、まずは標準的な容量で構いません。

.. _install_install:

インストール
==================================

下記の方法で想定通りにインストールできない場合は、 :ref:`faq_top` を確認してください。

..

1. ライセンスコードを取得していない場合は、 `機能一覧 <https://winmostar.com/jp/function_jp.html>`_ をご確認の上、以下のリンク先にてライセンスを登録し取得します。

   - `無償版 <https://winmostar.com/jp/dlFreeForm.php>`_
   - `学生版 <https://winmostar.com/jp/dlFreeForm.php>`_
   - `プロフェッショナル版 <https://winmostar.com/jp/purchase>`_
   - `プロフェッショナル版（トライアル） <https://winmostar.com/jp/dlTrialFormJP.php>`_

2. `安定版最新バージョン <https://winmostar.com/jp/download#latest_stable>`_ または `開発版最新バージョン <https://winmostar.com/jp/download#latest_devel>`_ のWinmostarインストーラをダウンロードします。

   .. note::
      - 動作環境は :ref:`install_recommend_spec` でご確認ください。
      - USBメモリ・DVD・ユーザポータルでインストーラを入手済みの方は、この操作が不要です。

.. _intall_installwm:

3. インストーラをダブルクリックして起動します。64bit版Windowsの場合は、インストールするWinmostarの種類（64bit版または32bit版）を選択します。

   .. warning::
      - Winmostarが起動している場合は、あらかじめ終了しておきます。

4. インストール先フォルダを指定し（デフォルトはC:\\winmos10）、インストールを開始します。

   .. warning::
      - インストール先フォルダおよびその上位階層の名前に日本語、全角文字などのマルチバイト文字や特殊記号が含まれている場合は、一部のモジュールが不具合を起こす場合があります。
      - ディスプレイ設定でテキストやその他の項目を拡大・縮小している場合は、一部表示が崩れる場合があります。詳細は `こちら <https://winmostar.com/jp/manual_jp/html/knownissues/knownissues.html#animationui>`_ 。
      - C:\\Program Files以下へのインストールは不可です。

   .. note::
      - インストール完了後、スタートメニューとデスクトップにショートカットが作成されます。
      - セキュリティ対策ソフトの警告が出た場合は、無視してインストールを継続してください（以下、同様）。
      - 既に過去のバージョンのWinmostarがインストールされている場合は、上書きインストールするか、インストール先フォルダを変更して過去のバージョンと共存させることが可能です。
      - バージョンアップの方は :ref:`install_update` または :ref:`install_upgrade` を確認してください。

..

5. 新規インストールの場合は、Winmostarを起動し、初回起動時に出現するダイアログでライセンスコードを設定します。

   .. note::
      - 納品したライセンス入りインストーラを使用した場合は、この操作が不要です。

.. _install_cygwinwm:

6. 以下のいずれかの手順でWinmostar向けのCygwinの環境（ :ref:`cygwin_wm <cygwinwm_top>` と呼びます）を構築します。

   - \*\*【推奨】\*\* `ビルド済みのcygwin_wmをインストールする場合 <https://winmostar.com/jp/gmx4wm_jp.html>`_ 
   - `cygwin_wmをビルドする場合 <https://winmostar.com/jp/gmx4wm_jp_win.html>`_ （非推奨、上級者向け）
   - `Cygwinの代わりにWindows Subsystem for Linuxを用いる場合 <https://winmostar.com/jp/WSL_jp.html>`_ （ベータ版）

7. WinmostarをインストールしたWindows PC（ローカルマシン）上で使用するソルバを、以下のリンク先の手順でインストールします。リモートサーバでのみ計算を行う場合もインストールしてください。

   - `Windows版GAMESSインストールマニュアル           <https://winmostar.com/jp/manual_jp/installation/GAMESS_install_manual_jp_win.pdf>`_
   - `Windows版NWChemインストールマニュアル           <https://winmostar.com/jp/nwchem4wm_jp.html>`_
   - `Windows版LAMMPSインストールマニュアル           <https://winmostar.com/jp/manual_jp/installation/LAMMPS_install_manual_jp_win.pdf>`_
   - `Windows版NAMDインストールマニュアル             <https://winmostar.com/jp/manual_jp/installation/NAMD_install_manual_jp_win.pdf>`_
   - `Windows版Quantum ESPRESSOインストールマニュアル <https://winmostar.com/jp/manual_jp/installation/QE_install_manual_jp_win.pdf>`_
   - `Windows版FDMNESインストールマニュアル           <https://winmostar.com/jp/manual_jp/installation/FDMNES_install_manual_jp_win.pdf>`_

   .. note::
      - Gromacs, Amber, MODYLAS, OpenMXは前の手順でインストールする :ref:`cygwin_wm <cygwinwm_top>` に含まれます。
      - 最大原子数を拡張したMOPAC6を使う場合は `独自拡張版MOPAC6 <https://winmostar.com/jp/mop6wxxx.zip>`_ から入手してください（動作未保障）。重原子・軽原子の最大数を200・220、150・170、100・120に拡張しています。

8. 必要に応じて、使用しているセキュリティ対策ソフトの設定において、Winmostar、cygwin_wm、ソルバのインストールフォルダを監視対象から除外します。

..

9. エクスプローラ上で各ファイルの拡張子を表示する設定に変更します。（必須ではありません）設定方法は :ref:`faq_showextension` で確認してください。

.. _install_scheduler:

10. リモートサーバへのジョブ投入と、リモートサーバ上でのジョブのスケジューリングを行いたい場合は、サーバに :ref:`対応しているジョブスケジューラ <remote_scheduler>` がインストールされているか確認します。入っていない場合は以下のリンク先の手順でTORQUEをインストールします。

   - `Linux版TORQUEインストールマニュアル <https://winmostar.com/jp/gmx4wm_jp_linux.html#Torque>`_

   .. note::
      - ジョブのスケジューリングが不要な場合は、リモートサーバ上にジョブスケジューラをインストールする必要がありません。

..

11. リモートサーバへのジョブ投入を行う場合は、投入先のサーバに使用するソルバを、以下のリンク先の手順でインストールします。

   - `Linux版NWChem, Gromacs, Amberインストールマニュアル <https://winmostar.com/jp/gmx4wm_jp_linux.html>`_
   - `Linux版GAMESSインストールマニュアル                 <https://winmostar.com/jp/manual_jp/installation/GAMESS_install_manual_jp_linux.pdf>`_
   - `Linux版Gromacsインストールマニュアル（詳細版）      <https://winmostar.com/jp/manual_jp/installation/Gromacs_install_manual_jp_linux.pdf>`_
   - `Linux版LAMMPSインストールマニュアル                 <https://winmostar.com/jp/manual_jp/installation/LAMMPS_install_manual_jp_linux.pdf>`_
   - `Linux版Quantum ESPRESSOインストールマニュアル       <https://winmostar.com/jp/manual_jp/installation/QE_install_manual_jp_linux.pdf>`_
   - `Linux版OpenMXインストールマニュアル                 <https://winmostar.com/jp/manual_jp/installation/OpenMX_install_manual_jp_linux.pdf>`_
   - `Linux版DCDFTBMDインストールマニュアル               <https://winmostar.com/jp/manual_jp/installation/DCDFTBMD_install_manual_jp_linux.pdf>`_

..

12. インストール手順は以上です。続けて、必要に応じて `ビギナーズガイド <https://winmostar.com/jp/tutorials/?pdf=BeginnersGuide_V10.pdf>`_ や `各種チュートリアル <https://winmostar.com/jp/manuals/>`_ を確認して下さい。

.. _install_uninstall:

アンインストール
==================================

Winmostarのインストール先フォルダとショートカットの削除することでアンインストールできます。

.. _install_update:

アップデート
==================================

アップデート（マイナーバージョン・リビジョンの更新）はインストールと同じ方法で実施できます。

例：V10.0.0→V10.1.0、V9.4.0→V9.4.5

- 古いバージョンを残してインストールする場合は、古いバージョンのUserPrefフォルダ以下のファイルを、新しいバージョンのUserPrefフォルダの以下にコピーすることで、設定を引き継ぐことができます。
- UserPrefフォルダはWinmostarのインストールフォルダ以下にあります。

.. _install_upgrade:

アップグレード
==================================

アップグレード（メジャーバージョンの更新）はインストールと同じ方法で実施できます。

例：V8.000→V9.0.0、V9.0.0→V10.0.0

- V3～V6からアップグレードする場合、古いバージョンのインストールフォルダ以下の設定ファイルatoms1.wmx、winmos_server.ini、wm_nmr.ref、wm_irscale.refをV10のUserPrefフォルダ以下にコピーすることで、設定を引き継ぐことができます。
- V7～V9からアップグレードする場合、古いバージョンのUserPrefフォルダ以下のwmset.ini、atoms1.wmx、winmos_server.ini、wm_nmr.ref、wm_irscale.refをV10のUserPrefフォルダ以下にコピーすることで、設定を引き継ぐことができます。
- UserPrefフォルダはWinmostarのインストールフォルダ以下にあります。
- 詳細は `V10移行ガイド <https://winmostar.com/jp/manual_jp/V10/MigrationGuide_V10.pdf>`_ 、 `V9移行ガイド <https://winmostar.com/jp/manual_jp/V9/MigrationGuide_V9.pdf>`_ を参照してください。

