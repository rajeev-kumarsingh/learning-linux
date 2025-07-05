#!/bin/bash
# ## 1. `expand` :The `expand` command converts tabs in a file to spaces.

# Convert tabs to spaces in a file
echo "Convert tabs to spaces in a file: expand <file-name> "
expand file_expand.txt
echo " "
echo "Specify the number of spaces per tab (e.g., 4): expand -t 4 file_expand.txt"
expand -t 4 file_expand.txt
echo " "
echo "Convert only initial tabs: expand -i file_expand.txt"
expand -i file_expand.txt
echo " "
echo "Convert and redirect output to a new file: expand file_expand.txt > newfile_expand.txt"
expand file_expand.txt > newfile_expand.txt
echo " "
echo "Use with a pipe from another command: cat file_expand.txt | expand"
expand file_expand.txt | expand
echo " "
echo " "
echo " "
echo "'unexpand' COMMAND"
# ## 2. `unexpand` : The `unexpand` command converts spaces to tabs.
echo "Convert spaces to tabs: unexpand file_unexpand.txt "
unexpand file_unexpand.txt
echo " "
echo "Only convert leading spaces: expand -a file_unexpand.txt "
expand -a file_unexpand.txt
echo " "
echo "Convert using a tab stop of 4: unexpand -t 4 file_unexpand.txt"
unexpand -t 4 file_unexpand.txt
echo " "
echo "Redirect output to another file: unexpand file_unexpand.txt > tabbed_unexpand.txt"
unexpand file_unexpand.txt > tabbed_unexpand.txt
echo " "
echo "onvert spaces from piped input: cat file_unexpand.txt | unexpand"
cat file_unexpand.txt | unexpand
echo " "
echo " "
echo " "

# join
echo "'join' COMMAND"
echo "Now let's see the join command examples"

# 1. Join two files on the first field
echo "Join two files on the first field: join file1_join.txt file2_join.txt "
join file1_join.txt file2_join.txt
echo " "

# 2. Specify join field for both files
echo "Specify join field for both files: join -1 1 -2 1 file1_join.txt file2_join.txt"
join -1 1 -2 1 file1_join.txt file2_join.txt

echo " "

# 3. Use different delimiters
echo " Use different delimiters:  join -t ":" file1_join.txt file2_join.txt"
join -t ":" file1_join.txt file2_join.txt
echo " "

# 4. Show unpairable lines from both files
echo "Show unpairable lines from both files: join -a1 -a2 file1_join.txt file2_join.txt"
join -a1 -a2 file1_join.txt file2_join.txt
echo " "

# 5. Join and redirect to a new file
echo "Join and redirect to a new file: join file1_join.txt file2_join.txt > joined.txt "
join file1_join.txt file2_join.txt > joined.txt
echo " "
echo " "
echo " "

echo "'split' COMMAND"
echo "'split' - The split command splits a file into pieces"
# 1. Split into 1000-line files
echo "Split into 1000-line files: split file.txt: "
split file_split.txt
echo " "
echo " "

# 2. Split with custom line count (e.g., 10 lines)
echo " Split with custom line count (e.g., 10 lines): split -l 10 file_split.txt"
split -l 10 file_split.txt
echo " "
echo " "

# 3. Use a custom prefix
echo "Use a custom prefix: split -l 5 file_split.txt part_"
split -l 5 file_split.txt part_
echo " "
echo " "

# 4. Split by bytes
echo "Split by bytes:  split -b 1k file_split.txt"
split -b 1k file_split.txt
echo " "
echo " "

# 5. Split a file and keep numeric suffixes
echo "Split a file and keep numeric suffixes: split -d -l 10 file_split.txt part_"
split -d -l 10 file_split.txt part_
echo " "
echo " "

echo "'sort' COMMAND"
echo "The 'sort' command sorts lines of text files"
# 1. Sort a file alphabetically
echo "Sort a file alphabetically: sort file_sort.txt"
sort file_sort.txt
echo " "
echo " "


# 2. Sort in reverse
echo " Sort in reverse: sort -r file_sort.txt"
sort -r file_sort.txt
echo " "
echo " "

# 3. Sort numerically
echo "Sort numerically: sort -n numbers.txt"
sort -n numbers.txt
echo " "
echo " "



# 4. Sort by a specific field (e.g., 2nd column)
echo "Sort by a specific field (e.g., 2nd column): sort -k 2 employees.txt"
sort -k 2 employees.txt
echo " "
echo " "

# 5. Remove duplicate lines while sorting
echo "Remove duplicate lines while sorting: sort -u employees.txt"
sort -u employees.txt
echo " "
echo " "
echo " "
echo " "
echo "'uniq' COMMAND"
echo "The 'uniq' command filtered out repeated lines"
# 1. Remove adjacent duplicate lines
echo "Remove adjacent duplicate lines: uniq file_uniq.txt"
cat file_uniq.txt
uniq file_uniq.txt
echo " "
echo " "
# 2. Count duplicate occurrences
echo "Count duplicate occurances: uniq -c employees.txt"
uniq -c employees.txt

echo " "
echo " "
# 3. Show only duplicates
echo "Show only duplicates"
uniq -d employees.txt
echo " "
echo " "

# 4. Show only unique lines
echo "Show only unique lines: uniq -u employees.txt"
uniq -u employees.txt

echo " "
echo " "
# 5. Use with sort to remove all duplicates
echo "Use with sort to remove all duplicates: sort employees.txt | uniq"
sort employees.txt | uniq
echo " "
echo " "
echo " "
echo " "

echo "'tr' COMMAND"
echo "The 'tr' command translates or deletes characters."
# 1. Convert lowercase to uppercase
echo "Convert lowercase to uppercase: tr 'a-z' 'A-Z' < file_tr.txt"
tr 'a-z' 'A-Z' < file_tr.txt
echo " "
echo " "

# 2. Delete digits
echo "Delete digits: tr -d '0-9' <file_tr.txt"
tr -d '0-9' < file_tr.txt
echo " "
echo " "

# 3. Squeeze repeated spaces
echo "Squeeze repeated spaces: tr -s ' ' < file_tr.txt"
tr -s ' ' < file_tr.txt
echo " "
echo " "

# 4. Replace spaces with newlines
echo "Replace spaces with newlines: tr ' ' '\n' < file_tr.txt"
tr ' ' '\n' < file_tr.txt
echo " "
echo " "

# 5. Translate comma to tab
echo "Translate comma to tab: tr ',' '\t'<file_tr.txt"
tr ',' '\t' < file_tr.txt
echo " "
echo " "

