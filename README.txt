- ���{��̕ҏW���@
source�ȉ���rst�t�@�C����ҏW����B

- Ubuntu(Windows10+ WSL)�ł̃r���h���\�z

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

2) locale/en/LC_MESSAGES/*.po��|�󂷂�B�u#, fuzzy�v�ƕ\�����ꂽ�����́A�����͂ɂ����ĕύX���ꂽ�����ŁApo�t�@�C�����ŖڂŌ��Ċm�F���āu#, fuzzy�v�̍s���폜����K�v������BNOTTRANSLATED�̕�����V���ɉp�󂷂�B

3) �ȉ��̃R�}���h�ŉp���html�𐶐�����B
$ bash po2html.sh

4) �ȉ��̃R�}���h�ŉp���pdf�𐶐�����B
$ bash po2pdf.sh

�r���ŃG���[���o����po�t�@�C�����C������B
�S�p�����͓���Ȃ��悤�ɂ���B
�]�v�Ȕ��p�󔒂����ɂȂ邱�Ƃ�����B
�s���I�h��\�ŃG�X�P�[�v���Ȃ��Ƃ����Ȃ����Ƃ�����̂Œ��ӁB

- �p�ꎩ���|��
https://nwpct1.hatenablog.com/entry/google-translate-sphinx-project
1) Google Cloud Platform��Cloud Translation API���쐬��JSON�t�@�C�����擾����B

2) JSON�t�@�C���̃p�X��GOOGLE_SERVICE_ACCOUNT_JSON���ϐ���WSL��.bashrc�Őݒ肷��B

3) �|�󂵂���.po�t�@�C����.auto�t�@�C�����폜����i�Ⴆ��index.po�̏ꍇ��index.po.auto���폜����j

4) �ȉ��̃R�}���h�����s���A�Ή�����.auto�t�@�C�����Ȃ�.po�t�@�C���ɂ���.auto�t�@�C���𐶐�����B
�����Ŗ|�󂵂��ʂɉ����ĉۋ������B
$ bash po2auto.sh

5) WinMerge����p����.po�t�@�C����.auto�t�@�C���̍�����\�����A.auto�̓��e��.po�Ƀ}�[�W����B
.auto�t�@�C���͎��Ɏ����|�󂵂����Ƃ��܂ō폜���Ȃ��B.auto�t�@�C�����g�����|�W�g���ŊǗ�����B
