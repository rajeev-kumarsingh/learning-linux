#! /bin/bash
# positional_parameters.sh: Non-Interactive Version -- uses command line arguments
# $0 conatins the program name
# $* stored all arguments

echo "Program: $0
The number of arguments specified is $#
The arguments are $*"
grep "$1" $2
echo "\nJob Over"