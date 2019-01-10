#!/bin/bash

make -e SPHINXOPTS="-D language='en'" html BUILDDIR="build_en"

STR_DEFAULT="NOTTRANSLATED"

find build_en/html -name '*.html' -print0 | \
    while read -r -d '' file; do sed -i.bak \
    -e 's%<p[^<]*>'${STR_DEFAULT}'</p>%%g' \
    -e 's%<div[^<]*>'${STR_DEFAULT}'</div>%%g' \
    -e 's%<span[^<]*>'${STR_DEFAULT}'</span>%%g' \
    -e 's%<dd[^<]*>'${STR_DEFAULT}'</dd>%%g' \
    -e 's%<dt[^<]*>'${STR_DEFAULT}'</dt>%%g' \
    -e 's%<a[^<]*>'${STR_DEFAULT}'</a>%%g' \
    -e 's%<td>'${STR_DEFAULT}'.*</td>%%g' \
    -e 's%<th[^<]*>'${STR_DEFAULT}'.*</th>%%g' \
    -e 's%<h1>'${STR_DEFAULT}'.*</h1>%%g' \
    -e 's%<h2>.*'${STR_DEFAULT}'.*</h2>%%g' \
    -e 's%<h3>.*'${STR_DEFAULT}'.*</h3>%%g' \
    -e 's%<li.*>.*'${STR_DEFAULT}'.*</li>%%g' \
    -e 's%<title>'${STR_DEFAULT}'%<title>%g' \
    -e 's%'${STR_DEFAULT}'%%g' \
    "$file"; done

find build_en/html -name '*.html' -print0 | \
    while read -r -d '' file; do rm "$file".bak ; done

