#!/bin/bash
# shift_statement1.sh : Script using shift -- Saves first argument; for works with the rest
#
case $# in
  0|1) echo "Usage: $0 file patterns(s)" ; exit 2 ;;
    *) flname=$1        # Stored $1 as a variable before it get lost.
       shift
       for pattern in "$@"
       do 
         grep "$pattern" $flname || echo "Pattern $pattern not found"
       done
esac


