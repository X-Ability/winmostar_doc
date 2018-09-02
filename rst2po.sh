#!/bin/bash

make gettext || exit

sphinx-intl update -p build/gettext -l en

find locale/en/LC_MESSAGES -name '*.po' -print0 | \
    while read -r -d '' file; do sed -i.bak -e 's/msgstr ""/msgstr \"NOT_TRANSLATED\"/g' "$file"; done

find locale/en/LC_MESSAGES -name '*.po' -print0 | \
    while read -r -d '' file; do rm "$file".bak; done
