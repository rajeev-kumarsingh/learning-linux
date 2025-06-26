#!/bin/bash
# monitfile.sh : Waits for a file to be created
#
while [ ! -r invoice.lst ]    # While the file invoice.lst can't be read
do
   sleep 60                   # Sleep for 60 seconds
done
alloc.pl                      # Execute this program after exiting loop