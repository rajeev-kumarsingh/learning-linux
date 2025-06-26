#!/bin/bash
#  check_free_space_on_disk_every_5_minutes.sh : Setting Up an Infinite Loop
#
while true ;
do 
   df -t             # df reports free space on disk
   sleep 300         # Sleep for 300 seconds or 5 minutes
done &               # & after done runs loop in the background