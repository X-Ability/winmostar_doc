#!/bin/sh

grep 'fuzzy' . -r | grep '.po:' | sed -e 's/:.*$//g' | uniq
