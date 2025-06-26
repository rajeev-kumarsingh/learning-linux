#! /bin/bash
# filetest.sh : Test file attributes 
#
if [ ! -e $1 ] ; then # -e = "exists"
  echo "File does not exist"
elif [ ! -r $1 ] ; then # -r = readable
  echo "File is not readable"
elif [ ! -w $1 ] ; then      # -w = writable
  echo "File is not writable"
else
  echo "File is both writable and readable"
fi
