#! /bin/bash
# menu.sh: Uses case to offer 5-items menu
#
echo "       MENU\n   
1. List of files\n2. Processes of user\n3. Today's Date
4. Users of system\n5. Quit to UNIX\nEnter your option: \c"
read choice 
case "$choice" in
  1) ls -l ;;
  2) ps -f ;;
  3) date ;;
  4) who ;;
  5) exit ;;
  *) echo "Invalid Option" # ;; not really required for the last option
esac  







