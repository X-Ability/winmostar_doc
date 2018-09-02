#!/bin/bash

if [ $# -ne 1 ]; then
    echo "WARNING: give html file"
    exit 1
fi

echo "processing for " $1

OUTPUT=${1}_trim.txt

sed -n -e '/<body>/,/<\/body>/p' $1 | \
    sed \
    -e 's/<[^<]\+>//g' \
    -e 's/^ *//g' \
    | tee $OUTPUT
