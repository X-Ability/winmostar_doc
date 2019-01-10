#!/bin/bash

make -e SPHINXOPTS="-D language='en'" latex BUILDDIR="build_en"

cd build_en/latex

STR_DEFAULT="NOTTRANSLATED"

cp winmostar_usermanual.tex winmostar_usermanual.tex.ori
grep -v '^ *$' winmostar_usermanual.tex.ori > winmostar_usermanual.tex

sed -i.bak \
   -e 's/\\section{'${STR_DEFAULT}'}//g' \
   -e 's/\\subsection{'${STR_DEFAULT}'}//g' \
   -e 's/\\subsubsection{'${STR_DEFAULT}'}//g' \
   -e 's/'${STR_DEFAULT}'//g' \
      winmostar_usermanual.tex

cp winmostar_usermanual.tex winmostar_usermanual.tex.ori
grep -v '^ *$' winmostar_usermanual.tex.ori > winmostar_usermanual.tex

# Delete empty blocks

sed -i.bak \
   ':lbl1;N;s/\\begin{sphinxadmonition}{hint}{Hint:}\n\\end{sphinxadmonition}//;b lbl1;' \
      winmostar_usermanual.tex
sed -i.bak \
   ':lbl1;N;s/\\begin{sphinxadmonition}{note}{Note:}\n\\end{sphinxadmonition}//;b lbl1;' \
      winmostar_usermanual.tex
sed -i.bak \
   ':lbl1;N;s/\\begin{sphinxadmonition}{warning}{Warning:}\n\\end{sphinxadmonition}//;b lbl1;' \
      winmostar_usermanual.tex
sed -i.bak \
   ':lbl1;N;s/\\begin{sphinxadmonition}{tip}{Tip:}\n\\end{sphinxadmonition}//;b lbl1;' \
      winmostar_usermanual.tex

# Delete chapter with empty name

sed -i.bak \
   ':lbl1;N;s/\\chapter{}.*\\chapter/\\chapter/;b lbl1;' \
      winmostar_usermanual.tex
sed -i.bak \
   ':lbl1;N;s/\\chapter{}.*\\renewcommand{\\indexname}{Index}/\\renewcommand{\\indexname}{Index}/;b lbl1;' \
      winmostar_usermanual.tex

make

#sphinx-build -b latex -D language='en' source build_en