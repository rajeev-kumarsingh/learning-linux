#!/bin/bash
# list_from_positional_parameter1.sh : Using for loop with positional parameter and replacing "$@" with $*
#
for pattern in $*
do
  grep "$pattern" emp.txt || echo "Pattern $pattern not found"
done
 