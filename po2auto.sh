#!/bin/sh

for file in `find . -type f -name "*.po" | head -n 70`; do
    do_translate="False"
    if [ ! -f ${file}.auto ]; then
	do_translate="True"
    else
	if [ `wc -l ${file}.auto | awk '{print $1}'` -eq 0 ]; then
	    do_translate="True"
	fi
    fi
    if [ ${do_translate} = "True" ]; then
	echo "translating " $file "..."
	python translate_po.py --lang en $file > ${file}.auto
    fi
done
