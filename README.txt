- 日本語の編集方法
source以下のrstファイルを編集する。

- Windows10+ WSLでのビルド環境構築

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
source activate sphinx-env
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

※一部の環境では日本語のPDFの生成に失敗することがある。
alias latex=platex
としてから実行すれば通るかもしれない。

- rstファイルを編集している最中に、自動的に日本語のhtmlをビルドする場合

$ sphinx-autobuild -b html source build/html
をTerminalで実行しておく。

- 英語版の作成方法

1) 各種rstファイルに変更が加わったら、locale/en/LC_MESSAGES/*.poを作成するために
$ bash rst2po.sh
とする。

2) locale/en/LC_MESSAGES/*.poを翻訳する。

3) 以下のコマンドで英語版htmlを生成する。
$ bash po2html.sh

4) 以下のコマンドで英語版pdfを生成する。途中でエラーが出るが、Enterキーを押してスキップする。
$ bash po2pdf.sh



