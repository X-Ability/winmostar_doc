- ���{��̕ҏW���@
source�ȉ���rst�t�@�C����ҏW����B

- Windows10+ WSL�ł̃r���h���\�z
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

�ȍ~�A�r���h���邽�߂ɂ͖���
source activate sphinx_env
���K�v�����A�ʓ|�ȏꍇ��~/.bashrc�ɏ����Ă��܂��B

- ���{���html���r���h������@

$ make html

build/html�ȉ����������ꂽhtml�ƂȂ�Aindex.html���u���E�U�ŊJ���Ɠ��e���m�F�ł���B
 
- ���{���pdf���r���h������@

$ make latexpdf
 
build/latex/winmostar_usermanual.pdf���������ꂽpdf�ł���B

- rst�t�@�C����ҏW���Ă���Œ��ɁA�����I�ɓ��{���html���r���h����ꍇ

$ sphinx-autobuild -b html source build/html
��Terminal�Ŏ��s���Ă����B

- To edit and build English version,

1) Write documents in Japanese on source/*.rst.

2) "make html" to generate Japanese websites.

3) "bash rst2po.sh" to create locale/en/LC_MESSAGES/*.po.

4) Translate at locale/en/LC_MESSAGES/*.po.

5) "bash po2target.sh" to generate English websites.

