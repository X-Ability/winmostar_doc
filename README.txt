- ���{��̕ҏW���@
source�ȉ���rst�t�@�C����ҏW����B

- Windows10+ WSL�ł̃r���h���\�z

Anaconda���C���X�g�[������
https://www.anaconda.com/download/#linux
����Python3�̃C���X�g�[�����_�E�����[�h���Ď��s�B
pyenv�������Ă���ꍇ�͈ȉ��̎菇�ł��ǂ��B

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

$ ./autobuild_html_jp.sh
��Terminal�ł����Ǝ��s���Ă����B

- �p��ł̍쐬���@

1) �e��rst�t�@�C���ɕύX�����������Alocale/en/LC_MESSAGES/*.po���쐬���邽�߂�
$ bash rst2po.sh
�Ƃ���B

2) locale/en/LC_MESSAGES/*.po��|�󂷂�B�u#, fuzzy�v�ƕ\�����ꂽ�����́A�����͂ɂ����ĕύX���ꂽ�����ŁApo�t�@�C�����ŖڂŌ��Ċm�F���āu#, fuzzy�v�̍s���폜����K�v������B

3) �ȉ��̃R�}���h�ŉp���html�𐶐�����B
$ bash po2html.sh

4) �ȉ��̃R�}���h�ŉp���pdf�𐶐�����B�r���ŃG���[���o�邪�AEnter�L�[�������ăX�L�b�v����B
$ bash po2pdf.sh



