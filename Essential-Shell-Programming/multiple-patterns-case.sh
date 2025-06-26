#! /bin/bash
# multiple-patters-case.sh : Logic that has to test a user response for both y and Y (or n and N)
#
echo "Do you wish to continue: (y/Y) \c"
read answer
case "$answer" in 
  y|Y) echo "Welcome to multi patterns option" ;;    # grep -E and egrep, case uses the | to delimit multiple patterns
  n|N) exit ;; # Null statement, no action to be performed.
esac