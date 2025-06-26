#! /bin/bash
# if-else.sh: Using if and else
if grep "^$1" /etc/passwd 2>/dev/null 
# search username at the beginning of line
then
  echo "Pattern found - Job Over"
else
  echo "Pattern not found"
fi
