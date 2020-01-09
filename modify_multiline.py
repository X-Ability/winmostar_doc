#!/bin/python
import os
import sys


def modify_multiline(pofile):
    
    f = open(pofile)
    lines = f.readlines()
    f.close()
    
    newlines = []
    for i, line in enumerate(lines):
        line = line.strip()
        if line == "":
            newlines.append("")
            continue

        if "fuzzy" in line:
            newlines.append(line)
            continue

        tokens = line.split()
        if len(tokens) < 2:
            continue
        str0 = tokens[0]
        if str0 == "msgid" or str0 == "msgstr":
            line = line.replace(str0, "", 1).strip()
            msg = line[1:-1]
            for line1 in lines[i+1:]:
                line1 = line1.strip()
                if len(line1) < 2:
                    break
                if line1[:1]  != '"':
                    break
                if line1[-1:] != '"':
                    break
                msg += line1[1:-1]
            newlines.append(str0 + ' "' + msg + '"')

    # remove msgid ""
    if 'msgid ""' in newlines:
        i = newlines.index('msgid ""')
        newlines = newlines[:i] + newlines[i+2:]
    
    f = open(pofile, "w")
    f.writelines("\n".join(newlines))
    f.close()
                
                
if __name__ == '__main__':
    args = sys.argv
    if len(args) < 2:
        sys.exit("Usage: python " + args[0] + " pofile")
        
    modify_multiline(args[1])
