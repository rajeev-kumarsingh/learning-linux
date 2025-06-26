#!/bin/bash
# extract_individual_field_from_date_using_set.sh : Using set extract individual fields of date
#
set `date`
echo $*
echo "The date today is $2 $3, $6"
echo " $4 "  
echo "First field of is: $1"
echo "Second field of date is: $2"
echo "Third field of date is: $3"
echo "Fourth field of date is: $4"
echo "Fiveth field of date is:$5"
echo "Sixth field of date is: $6"
echo "His son born in $2 $3 $6"

case $1 in 
Tue) tar -cvf /dev/fd0 $HOME ;;
Thu) scp -r $HOME ubuntu:/home/user ;;
Sat) find $HOME -newer .last_full_backup_time -print >tarilist ;;
  *) ;;