#!/bin/bash
# for_loop.sh :Uses of for loop
#
for file in chap20 chap21 chap22 chap23 chap24 ; do # Each white-space separated words in ___list___ is assigned to a variable file
  cp $file ${file}.bak
  echo $file is copied to $file.bak

done

