#!/bin/bash

make gettext || exit

sphinx-intl update -p build/gettext -l en

STR_DEFAULT="NOTTRANSLATED"

find locale/en/LC_MESSAGES -name '*.po' -print0 | \
    while read -r -d '' file; do python modify_multiline.py $file; done

find locale/en/LC_MESSAGES -name '*.po' -print0 | \
    while read -r -d '' file; do sed -i.bak -e 's/msgstr ""/msgstr \"'${STR_DEFAULT}'\"/g' "$file"; done

find locale/en/LC_MESSAGES -name '*.po' -print0 | \
    while read -r -d '' file; do rm "$file".bak; done
