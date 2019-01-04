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
      Remote Directory
         リモートサーバの作業ディレクトリを指定します。空の場合はホームディレクトリからIDdir/プログラム名/ファイル名が作業ディレクトリになります。
         :command:`'/work/dir'` のようにシングルクォーテーションで囲うと、指定したディレクトリから :file:`IDdir/プログラム名/ファイル名` を作成します。
         また、 :command:`''/work/dir''` のようにシングルクォーテーションを2個づつで囲むと、IDdirは作成されません。
         
         本項目には :ref:`remote_alias` を使用可能です。
      Solver
         このプロファイルにおいて使用するプログラムを選択します。
         
         ウインドウ内でも変更可能です。
      Shell Script
         デフォルトのシェルスクリプトを使用して計算を実行する場合は :guilabel:`Use Default` 、シェルスクリプトをカスタマイズする場合は :guilabel:`Use Template` をチェックします。 :guilabel:`Use Template` の場合はその横のプルダウンメニューで使用するテンプレートファイルを選択し、またテンプレートファイルを追加、編集、削除する場合はその下の :guilabel:`Add` , :guilabel:`Edit`  :guilabel:`Remove` ボタンをクリックします。
         
         テンプレートファイルの中では、 :ref:`remote_alias` を使用可能です。
         
         ウインドウ内でも変更可能です。
      Options
         ジョブ投入コマンド(qsubなど)の後ろに与える引数を設定します。
         
         本項目には :ref:`remote_alias` を使用可能です。
         
         ウインドウ内でも変更可能です。
      Prefix for Submission Commands
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
         ジョブスケジューラに登録されたジョブの一覧を取得します。
         
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


         