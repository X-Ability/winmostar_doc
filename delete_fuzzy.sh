#!/bin/sh

for file in `find . -type f -name "*.po"`; do
    sed -i.bak -e 's/^#, fuzzy$//g' $file
done
