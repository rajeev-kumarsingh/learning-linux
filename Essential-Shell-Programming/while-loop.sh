#!/bin/bash
# while-loop.sh : Shows use of the while loop
#
answer=y                   # Must set it to y first to enter the loop
while [ "$answer" = "y" ]  # The control command
do
  echo "Enter the code and description: \c" >/dev/tty
  read code description    # Read both together
  #echo "$code | $description" >> newlist # will work same as below does 
  echo "$code | $description"  done >> newlist # Append the line to newlist
  echo "Enter any more (y/n)? \c" >/dev/tty
  read anymore
  case $anymore in
    y*|Y*) answer=y ;; # Also accepts yes, YES etc.
    n*|N*) answer=n ;; # Also accepts no, NO etc.
        *) answer=y ;; # Any other reply means y
  esac
done 