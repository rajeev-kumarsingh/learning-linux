#!/bin/bash
# list_from_positional_parameter.sh : Using a for loop with positional parameters
#
for pattern in "$@"       # Decide not to use $*
do      
  grep "$pattern" emp.txt || echo pattern "$pattern" not found 
done