#! /bin/bash
# multiple-patters-case.sh : Logic that has to test a user response for both y and Y (or n and N)
#
echo "Do you wish to continue? (y/Y): \c"
read answer
case "$answer" in

  [yY][eE]*) echo "Welcome to multioption case" ;;
  [nN][oO]) exit ;;
     *) echo "Invalid response " # when everything else fails
esac


