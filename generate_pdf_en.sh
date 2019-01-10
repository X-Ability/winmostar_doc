#!/bin/bash

make -e SPHINXOPTS="-D language='en'" latexpdf BUILDDIR="build_en"

#sphinx-build -b latex -D language='en' source build_en