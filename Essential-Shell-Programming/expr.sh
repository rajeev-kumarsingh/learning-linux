#!/bin/bash
# expr.sh : Uses `expr` is in incrementing the value of a variable 
#
x=5
x=`expr $x + 1 ` # This is the same as C's x++
echo $x
