#! /bin/bash
# test-in-ifelse.sh :Using test, $0 and $# in an if-elif-if construct
#
if test $# -eq 0; then
  echo "Usage: $0 pattern file" >/dev/tty
elif test $# -eq 2 ; then
  grep "$1" $2 || echo "$1 not found in $2" >/dev/tty
else
  echo "You didn't entered two arguments">/dev/tty
fi