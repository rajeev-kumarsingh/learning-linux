#!/bin/bash
# shift_statement.sh: Using shift statement to transfer the contents of the positional parameter to it's immediate lower numbered one.
#
set `date`
echo $@                        # Here "$@" and $* are interchangable
echo $1 $2 $3
shift
echo $1 $2 $3

