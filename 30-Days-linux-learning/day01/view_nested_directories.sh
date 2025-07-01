#!/bin/bash
# view_all_nested_directories.sh: use for loop to view all nested directories
#
base="nested_dir"
ls -ltr
cd "$base"
pwd
for i in $(seq 1 100)
do
	echo "Present Working Directory is: \n"
        pwd
	echo
	echo "List all files and directories:"
	ls -ltr "dir$i"
	cd "dir$i"
	echo
	echo "present working directory is:"
	pwd
done