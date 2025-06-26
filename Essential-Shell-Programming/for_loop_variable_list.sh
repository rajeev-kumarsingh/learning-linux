#!/bin/bash
# for_loop_variable_list.sh :Possible sources of the list
# 
for var in $PATH $HOME $MAIL 
do
  echo "$var" 
done


# You have to provide the `semicolons` ( `;` ) at the right places if you want to enter the entire loop in a single line.
for var in $PATH $HOME $MAIL ; do echo "$var" ; done
