#!/bin/bash
# rename_file_individually.sh : Rename file name from basename1.txt.md ....basename5.txt.md to basename1.txt...basename5.txt
#
for i in {1..5}
do
  mv "basename${i}.txt.md" "basename${i}.txt"
done 