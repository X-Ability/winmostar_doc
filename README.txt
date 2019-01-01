- 日本語の編集方法
source以下のrstファイルを編集する。

- Windows10+ WSLでのビルド環境構築
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
sudo apt install texlive-lang-cjk xdvik-ja evince
sudo apt install texlive-full

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

$ sphinx-autobuild -b html source build/html
をTerminalで実行しておく。

- To edit and build English version,

1) Write documents in Japanese on source/*.rst.

2) "make html" to generate Japanese websites.

3) "bash rst2po.sh" to create locale/en/LC_MESSAGES/*.po.

4) Translate at locale/en/LC_MESSAGES/*.po.

5) "bash po2target.sh" to generate English websites.

