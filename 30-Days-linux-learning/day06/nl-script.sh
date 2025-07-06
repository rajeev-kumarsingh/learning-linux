#!/bin/bash
file="/etc/passwd"
nl $file >numbered_passwd.txt
echo "Numbered lines saved to numbered_passwd.txt"