if [ $# -eq 0 ] ; then
  echo "Enter the string to be searched: \c"
  read pname
  if [ -z "$pname" ] ; then # -z checks for a null string
    echo "You have not entered the string" ; exit 1
  fi
  echo "Enter the filename to be used: \c"
  read flname
  if [ ! -n "$flname" ] ; then # ! -n is the same as -z
    echo "You have not entered the filename" ; exit 2
  fi
  ./test-in-ifelse.sh "$pname" "$flname" # Runs the script that will do job
else
  ./test-in-ifelse.sh "$@" # Used "$@" instead of $*
fi