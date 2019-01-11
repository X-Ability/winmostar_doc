.. include:: ../common.rst

.. _remote_top:

リモートジョブ
============================================

リモートジョブ投入機能を用いると、Winmostarをインストールしたマシンとは別のLinuxマシン（ **リモートサーバ** と呼ぶ）でソルバを実行することが可能になります。

.. _remote_scheduler:

対応するジョブスケジューラ
-------------------------------

V8.027時点でWinmostarが対応するジョブスケジューラは以下の通りです。カスタマイズサービス `Winmostar for you <https://x-ability.co.jp/wm4u.pdf>`_ においてご希望のジョブスケジューラに追加対応させることも可能です。

   - TORQUE (PBS)
   - SGE, UGE
   - SLURM
   - T2SUB
   - llsubmit
   - NQS
   - NQS2
   - ST
   - NSUB
   - Rescale
   
また、ジョブスケジューラがインストールされていない環境でも、直接ソルバを起動したり、 :command:`qsub` , :command:`qstat` などのコマンドを模倣するコマンド、スクリプトを用意することで、一部機能を利用することができます。

.. _remote_procedure:

リモートジョブの実行手順
-----------------------------

各機能の詳細は :ref:`remote_submitjob` を参照してください。

1. 計算を実行したいサーバに、ジョブスケジューラとソルバをセットアップしてください。

   これからインストールする場合は、 :ref:`こちら <install_scheduler>` を参考にしてください。

.. _remote_procedure_preparation:

2. :ref:`calc_import_top` の1, 2の手順に従い初期条件の作成とキーワードの設定を行い、キーワード設定ウインドウを :guilabel:`OK` ボタンを押して閉じます。

.. _remote_procedure_open:

3. ツールバーの :guilabel:`リモートジョブ投入` ボタン |toolbar_submit| をクリックします。

.. _remote_procedure_addprofile:

4. :guilabel:`Submit Remote Job` ウインドウにおいて、すでに設定が済んでいる :guilabel:`Profile` が選択されているときは、 :ref:`こちら <remote_procedure_sendsub>` に進みます。されていない場合は、 :menuselection:`Manage... --> Add Profile...` を選択します。

   |fig_remote_addprofile|

.. _remote_procedure_editconnection:

5. :guilabel:`Edit Profile` ウインドウ上部にて、以下の内容を入力します。

   - Profile Name
   - Connection
      
      - Hostname
      - Port（通常は22を使用）
      - Timeout（わからない場合はデフォルト値を使用）
      - Username
      - Password
      - SSH Key（必要に応じて設定）
      
   |fig_remote_editconnection|
      
   TSUBAME、FOCUSなどに多段SSH接続する方法は `https://winmostar.com/jp/manual_jp.html <https://winmostar.com/jp/manual_jp.html>`_ を参照してください。
      
.. _remote_procedure_testconnection:

6. 入力後、SSH接続をテストするために、 :guilabel:`Edit Profile` ウインドウ下の :guilabel:`Test Connection` ボタンをクリックします。

   黒いターミナルウインドウが開き、初回接続時は、 ``Store key in cache? (y/n)`` と表示される。その場合は、 :kbd:`y` とキー入力する。

   |fig_remote_storekey|

   接続に成功した場合は、先ほどの :guilabel:`Submit Remote Job` ウインドウの下部に ``Connection test succeeded.`` と表示されます。

   |fig_remote_testconnection|

   ユーザ設定等が間違っている場合はターミナルウインドウで ``Access denied ***@***'s password:`` などど表示されます。その場で正しいパスワードを入力した場合も、再度 :guilabel:`Edit Profile` ウインドウでパスワードを再入力してください。

   その他、 :guilabel:`Submit Remote Job` ウインドウの下部に ``ERROR: Connection timed out or an error occurred.`` と表示された場合は、接続設定を見直してください。

.. _remote_procedure_editqueue:

7. :guilabel:`Edit Profile` ウインドウ下部にて、以下の内容を入力します。

   - Queue & Solver
      
      - Queue
      - Solver
      - Shell Script
      - Options（ :command:`qsub` 等のジョブをサブミットするコマンドの引数）

   |fig_remote_editqueue|

   まず接続するサーバ上にインストールされたジョブスケジューラを :guilabel:`Queue` を選択し、その上で使用するソルバを :guilabel:`Solver` で選択します。
   次に、 :guilabel:`Shell Script` の :guilabel:`Use Template` をクリックします。
   選択したソルバのテンプレートがない場合は、テンプレートの名前を入力すると、テンプレートがテキストエディタで開かれます。
   ある場合は、 :guilabel:`Use Template` の横のプルダウンメニューで使用したいテンプレートファイルを選択し、その下の :guilabel:`Edit...` ボタンをクリックするとテンプレートファイルがテキストエディタで開きます。
   テンプレートファイルには、 :command:`module load ...` 、 :command:`source ...` 、 :command:`export PATH=...` などのコマンドや、 :command:`mpirun` などの、そのサーバで選択したソルバを使用するための設定を書き入れます。
   
   利便性を上げるため、テンプレートファイルや :guilabel:`Options` には、個々のジョブに依存する並列数やファイル名などの設定がジョブ実行時に代入されるエイリアスの形で入力することを推奨します。詳細は :ref:`remote_alias` を参照してください。

.. _remote_procedure_ok:

8. :guilabel:`OK` ボタンを押して :guilabel:`Edit Profile` ウインドウを閉じます。

.. _remote_procedure_qstatq:

9. :guilabel:`Submit Remote Job` ウインドウで、 :menuselection:`Queue --> Show Usage of Each Queues` メニューをクリックし、ウインドウ下部にリモートサーバの情報が表示されることを確認します。

   正常に表示されない場合は、 :menuselection:`Manage... --> Edit Profile...` で設定を見直します。

.. _remote_procedure_sendsub:

10. ジョブを開始するために、 :guilabel:`Send & Submit` ボタンをクリックします。ここでの操作方法は、通常のローカルジョブと同じです。

   |fig_remote_sendsub_button|

   ウインドウ下部には、サブミットしたジョブのIDが表示されます。IDはジョブをキャンセル（kill）するときに使用します。

   リモートサーバでジョブが実行されたディレクトリは、 :menuselection:`Profile --> Edit Profile` の :guilabel:`Remote Directory` で設定することができ、 実際使用されたものは :guilabel:`Submit Remote Job` ウインドウの :guilabel:`Remote Directory` 欄に表示されます。

.. _remote_procedure_qstat:

11. サブミットしたジョブの状況は、 :menuselection:`Queue --> List Submitted Jobs` で確認してください。全てのジョブが完了した場合は ``---`` と表示されます。

   サブミットしたジョブがあまりに早く終了した場合は、サブミットした直後であっても ``---`` と表示されます。
   
.. _remote_procedure_ls:

12. リモートサーバ上の特定のジョブの状況を確認するときは、以下の操作を行ってください。 

   - :guilabel:`ls` ボタン
   - :guilabel:`cat` ボタン
   - :guilabel:`grep` ボタン
   - :guilabel:`tail` ボタン
   - :guilabel:`Get & Open ...` ボタン
   
   |fig_remote_progress_button|
   
   操作対象のジョブは、 :guilabel:`Remote Directory` 欄に表示されたものとなります。デフォルトの設定の場合は、メインウインドウで対象としたいジョブの入力ファイルを開き、ジョブ投入時のプロファイルを選択してください。

.. _remote_procedure_get:

13. リモートサーバ上で終了したジョブの結果解析をローカルマシンで実行したい場合は、 :guilabel:`Get All Files` ボタンをクリックします。

   |fig_remote_get_button|

   操作対象のジョブは、 :guilabel:`Remote Directory` 欄に表示されたものとなります。デフォルトの設定の場合は、メインウインドウで対象としたいジョブの入力ファイルを開き、ジョブ投入時のプロファイルを選択してください。

.. _remote_procedure_analysis:

14. ファイル取得後は、ローカルジョブと同じ操作方法で結果解析を実施することができます。

.. _remote_submitjob:

Submit Jobウインドウの各機能
-----------------------------------

Fileメニュー
   Revert All Changes
      変更を破棄しサーバ設定ファイルを読み込み直します。
   Import Setting File
      サーバ設定ファイルを読み込み、その中に含まれているプロファイルを、既存のプロファイルのリストに追加します。
   Restore Setting File
      サーバ設定ファイルを出荷時の状態に戻します。
   Close
      このウインドウを閉じます。
Profileメニュー
   Add Profile, Duplicate Profile, Remove Profile
      サーバ接続のプロファイルを追加、複製、削除します。
      ウインドウ内の :guilabel:`Manage` ボタンからも同様の操作が可能です。
   Edit Profile
      サーバ接続のプロファイルを編集します。
      一部の設定はSubmit Jobウインドウ内で直接編集できます。
      
      Profile name
         Submit Jobウインドウで表示されるプロファイル名を指定します。
      Hostname
         リモートサーバのホスト名またはIPアドレスを指定します。
      Port
         接続に用いられるポート番号を指定します。
      Timeout
         リモートサーバからの応答が無い際に、接続を自動的に切断する時間[単位：秒]を指定します。
      Username
         リモートサーバへのログインID（ユーザ名）を指定します。
      Password
      	ログインIDのパスワードを指定します。[View]をクリックするとパスワードの非表示が解除されます。
      SSH Key
         必要に応じてSSHキーを設定します。
      Queue
         接続するリモートサーバ上で稼働しているジョブスケジューラの種類を選択します。
      Solver
         このプロファイルにおいて使用するプログラムを選択します。
         
         ウインドウ内でも変更可能です。
      Shell Script
         デフォルトのシェルスクリプトを使用して計算を実行する場合は :guilabel:`Use Default` 、シェルスクリプトをカスタマイズする場合は :guilabel:`Use Template` をチェックします。 :guilabel:`Use Template` の場合はその横のプルダウンメニューで使用するテンプレートファイルを選択し、またテンプレートファイルを追加、編集、削除する場合はその下の :guilabel:`Add` , :guilabel:`Edit`  :guilabel:`Remove` ボタンをクリックします。
         
         テンプレートファイルの中では、 :ref:`remote_alias` を使用可能です。
         
         テンプレートファイルはWinmostarのインストールフォルダの :file:`UserPref` の中に保存されます。
         
         ウインドウ内でも変更可能です。
      Options
         ジョブ投入コマンド(qsubなど)の後ろに与える引数を設定します。
         
         本項目には :ref:`remote_alias` を使用可能です。
         
         ウインドウ内でも変更可能です。
      Remote Directory
         リモートサーバの作業ディレクトリを指定します。空の場合はホームディレクトリからIDdir/プログラム名/ファイル名が作業ディレクトリになります。
         :command:`'/work/dir'` のようにシングルクォーテーションで囲うと、指定したディレクトリから :file:`IDdir/プログラム名/ファイル名` を作成します。
         また、 :command:`''/work/dir''` のようにシングルクォーテーションを2個づつで囲むと、IDdirは作成されません。
         
         本項目には :ref:`remote_alias` を使用可能です。
      Prefix for Queueing Commands
         qsubなどのコマンドの実行時に、それらのコマンドの接頭辞が必要な場合はここに設定します。通常は空にします。
      Test Connection         
         SSHの接続テストを行います。
         ジョブスケジューラのテストは行わないので注意してください。
   Connectionメニュー
      Test Connection Using SFTP
         SSHの接続テストを行います。
         
         ウインドウ内の :guilabel:`Test Connection` ボタンでも同様の操作が可能です。
      Share SSH Connection Once Established
         SSH接続を持続させるときに使用します。
         SSH接続を伴う操作の前に一度実行しておくと、それ以降の操作が軽快になります。
      Open Putty
         Puttyの設定ウインドウを開き、接続に関する詳細な設定を行います。
   Jobメニュー
      Send Local Files & Submit Job
         計算に必要な入力ファイルを生成し、SFTPでリモートサーバに転送した後、ジョブスケジューラにサブミットします。
         サブミットした後ジョブのIDが表示されます。
         
         ウインドウ内の :guilabel:`Send & Submit` ボタンでも同様の操作が可能です。
      Submit Job
         計算に必要な入力ファイルを生成し、SFTPでリモートサーバに転送します。
      List Files at Remote Directory
         Remote Directory内のファイル一覧を取得します。
         
         ウインドウ内の :guilabel:`ls` ボタンでも同様の操作が可能です。
      Display Remote File
         Remote Directory内の選択したファイルの内容を取得します。
         
         ウインドウ内の :guilabel:`cat` ボタンでも同様の操作が可能です。
      Display Last Part of Remote Log File
         Remote Directory内のログファイルの末尾を取得します。
         
         ウインドウ内の :guilabel:`tail` ボタンでも同様の操作が可能です。
      Search String in Remote Log File
         Remote Directory内のログファイルの中から文字列を検索します。
         
         ウインドウ内の :guilabel:`grep` ボタンでも同様の操作が可能です。
      Get Remote File and ...
         Remote Directory内の特定ファイルをgetして可視化します。
         
         ウインドウ内の :guilabel:`Get File & ...` ボタンでも同様の操作が可能です。
   Queueメニュー
      各メニュー名に括弧書きで、選択されたジョブスケジューラにおける具体的なコマンド名が表示されます。
      
      List Submitted Jobs
         ジョブスケジューラに登録されたジョブの一覧を取得します。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      Kill Submitted Job
         ジョブスケジューラに登録されたジョブを中断します。サブミットした直後に表示されたジョブのIDを入力する必要があります。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      List Submitted Jobs in Detail
         ジョブスケジューラに登録されたジョブの詳細な一覧を取得します。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      Show Information of Each Queue
         ジョブスケジューラが管理するキューの一覧を取得します。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      Show Usage of Each Queue
         各キューの使用状況を取得します。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      Show Information of All Nodes
         ジョブスケジューラが管理する全マシンの情報を取得します。
         
         ウインドウ内の同じコマンド名のボタンでも同様の操作が可能です。
      その他のメニュー
         項目名と同じコマンドがリモートサーバ上で実行されます。
   Optionsメニュー
      Enable Admin Mode
         ルート権限でリモートサーバにアクセスする際に使用します
         
.. _remote_alias:

リモートジョブ機能で使用可能なエイリアス文字列
------------------------------------------------

ジョブ実行時に使用するシェルスクリプトやサブミットコマンドの引数は、計算条件に応じて動的に変化する場合があるため、その様な状況に対応するためにエイリアス文字列を使うことができます。

使用可能なエイリアス文字列の一覧を以下に示します。

.. list-table::
   :stub-columns: 1

   * - %WM_USER_ID%
     - リモートディレクトリ作成用ローカルユーザID
   * - %WM_SOLVER%
     - ソルバの種類
   * - %WM_INPUT%
     - 入力ファイル名
   * - %WM_PREFIX%
     - 入力ファイル名から拡張子を除いたもの
   * - %WM_EXT%
     - 入力ファイル名の拡張子
   * - %WM_NUM_PROC%
     - CPU(MPI)並列数
   * - %WM_NUM_THREAD%
     - Thread並列数
   * - %WM_NUM_PARALLEL%
     - %WM_NUM_PROC%と%WM_NUM_THREAD%の積


         