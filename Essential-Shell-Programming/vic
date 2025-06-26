#!/bin/bash
# calling_a_script_by_different_names.sh : Script that is called by different names
#
lastfile=`ls -t *.c | head -n 1` # This gets the most recently modified .c file in the current directory.
# `ls -t *.c` lists all `.c` files sorted by modification time.
# `head -n 1` picks the latest one.
# The result is stored in `lastfile`.


command=$0  # Assign a special parameter to a variable
# $0 contains the name used to invoke the script, which could be ./runc, ./comc, ./vic, etc.
# This allows the script to behave differently based on how it was called.
executable=`expr $lastfile : '\(.*\).c'` # Removes .c; foo.c becomes foo
# expr $lastfile : '\(.*\).c' uses regex to remove .c from the filename.
# For example: foo.c → foo
# The result is stored in `executable`.

case $command in
  *runc) $executable ;;
  *vic) vi $lastfile ;;
  *comc) cc -o $executable $lastfile && 
         echo "$lastfile compiled successfully" ;;
esac