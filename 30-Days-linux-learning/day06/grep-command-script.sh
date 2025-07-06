#!/bin/bash
keyword="error"
log_file="/var/log/syslog"
sudo grep -in "$keyword" $log_file > error_log.txt
echo "Error lines saved to error_log.txt"

