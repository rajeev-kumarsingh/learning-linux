#!/bin/bash
# basename.sh : Using basename to change file extension
#
for file in *.txt 
do
  base=$(basename "$file" .txt)
  mv "$file" "${file}.md"
done
