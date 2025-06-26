#!/bin/bash
# basename.sh : Using basename to change file extension
#
for file in *.txt
do
  base=$(basename "$file" .txt) # Remove .txt
  mv "$file" "${base}.md"       # Rename to .md
done