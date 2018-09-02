#!/bin/bash

make -e SPHINXOPTS="-D language='en'" html BUILDDIR="build_en"

find build_en/html -name '*.html' -print0 | \
    while read -r -d '' file; do sed -i.bak \
    -e 's%<p[^<]*>NOT_TRANSLATED</p>%%g' \
    -e 's%<div[^<]*>NOT_TRANSLATED</div>%%g' \
    -e 's%<span[^<]*>NOT_TRANSLATED</span>%%g' \
    -e 's%<dd[^<]*>NOT_TRANSLATED</dd>%%g' \
    -e 's%<dt[^<]*>NOT_TRANSLATED</dt>%%g' \
    -e 's%<a[^<]*>NOT_TRANSLATED</a>%%g' \
    -e 's%<td>NOT_TRANSLATED.*</td>%%g' \
    -e 's%<th[^<]*>NOT_TRANSLATED.*</th>%%g' \
    -e 's%<h1>NOT_TRANSLATED.*</h1>%%g' \
    -e 's%<h2>.*NOT_TRANSLATED.*</h2>%%g' \
    -e 's%<h3>.*NOT_TRANSLATED.*</h3>%%g' \
    -e 's%<li.*>.*NOT_TRANSLATED.*</li>%%g' \
    -e 's%<title>NOT_TRANSLATED%<title>%g' \
    -e 's%NOT_TRANSLATED%%g' \
    "$file"; done

find build_en/html -name '*.html' -print0 | \
    while read -r -d '' file; do rm "$file".bak ; done

