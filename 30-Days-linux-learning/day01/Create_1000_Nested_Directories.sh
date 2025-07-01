#!/bin/bash
#Create_100_Nested_Directories.sh: Final structure: nested_dir/dir1/dir2/.../dir100
#
base="nested_dir"
mkdir "$base"
cd "$base"

for i in $(seq 1 100)
do
	mkdir "dir$i"
	cd "dir$i"
done