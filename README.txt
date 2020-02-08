- 日本語の編集方法
source以下のrstファイルを編集する。

- Ubuntu(Windows10+ WSL)でのビルド環境構築

Anacondaをインストールする
https://www.anaconda.com/download/#linux
からPython3のインストーラをダウンロードして実行。
pyenvが入っている場合は以下の手順でも良い。

pyenv install 2.7.15
pyenv versions
pyenv global 2.7.15
python --version
pyenv install anaconda3-5.2.0
pyenv global anaconda3-5.2.0
pyenv rehash
echo 'export PATH="$PYENV_ROOT/versions/anaconda3-5.2.0/bin/:$PATH"' >> ~/.bashrc

source ~/.bashrc
conda update conda
conda create -n sphinx_env
source activate sphinx_env
conda install Sphinx
conda install -c conda-forge sphinx-autobuild
pip install sphinx-intl
pip install sphinx_rtd_theme
sudo apt install texlive-lang-cjk xdvik-ja evince texlive-full

# to install pdftk...
sudo add-apt-repository ppa:malteworld/ppa
sudo apt update
sudo apt install pdftk

以降、ビルドするためには毎回
source activate sphinx_env
が必要だが、面倒な場合は~/.bashrcに書いてしまう。

- 日本語のhtmlをビルドする方法

$ make html

build/html以下が生成されたhtmlとなり、index.htmlをブラウザで開くと内容を確認できる。
 
- 日本語のpdfをビルドする方法

$ make latexpdf
 
build/latex/winmostar_usermanual.pdfが生成されたpdfである。

- rstファイルを編集している最中に、自動的に日本語のhtmlをビルドする場合

$ ./autobuild_html_jp.sh
をTerminalでずっと実行しておく。

- 英語版の作成方法

1) 各種rstファイルに変更が加わったら、locale/en/LC_MESSAGES/*.poを作成するために
$ bash rst2po.sh
とする。

2) locale/en/LC_MESSAGES/*.poを翻訳する。「#, fuzzy」と表示された部分は、元文章において変更された部分で、poファイル内で目で見て確認して「#, fuzzy」の行を削除する必要がある。NOTTRANSLATEDの部分を新たに英訳する。

3) 以下のコマンドで英語版htmlを生成する。
$ bash po2html.sh

4) 以下のコマンドで英語版pdfを生成する。
$ bash po2pdf.sh

途中でエラーが出たらpoファイルを修正する。
全角文字は入らないようにする。
余計な半角空白も問題になることがある。
ピリオドも\でエスケープしないといけないこともあるので注意。

- 英語自動翻訳
https://nwpct1.hatenablog.com/entry/google-translate-sphinx-project
1) Google Cloud PlatformでCloud Translation APIを作成しJSONファイルを取得する。

2) JSONファイルのパスをGOOGLE_SERVICE_ACCOUNT_JSON環境変数にWSLの.bashrcで設定する。

3) 翻訳したい.poファイルの.autoファイルを削除する（例えばindex.poの場合はindex.po.autoを削除する）

4) 以下のコマンドを実行し、対応する.autoファイルがない.poファイルについて.autoファイルを生成する。
ここで翻訳した量に応じて課金される。
$ bash po2auto.sh

5) WinMerge等を用いて.poファイルと.autoファイルの差分を表示し、.autoの内容を.poにマージする。
.autoファイルは次に自動翻訳したいときまで削除しない。.autoファイル自身もリポジトリで管理する。
