#!/bin/bash
# set_command.sh : set assign it's argument to the positional parameters
#
set 9876 2345 6213
echo "\$1 is $1", "\$2 is $2", "$3 is $3"
echo "The $# arguments are $*"