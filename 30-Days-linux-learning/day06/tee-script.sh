#!/bin/bash

log_file="system_info.log"

# Print and log heading
echo "======================" | tee -a $log_file
echo "System Report" | tee -a $log_file
echo "Date: $(date)" | tee -a $log_file
echo "Hostname: $(hostname)" | tee -a $log_file
echo "======================" | tee -a $log_file

# System uptime
echo -e "\n>> Uptime:" | tee -a $log_file
uptime | tee -a $log_file

# Memory usage
echo -e "\n>> Memory (free -h):" | tee -a $log_file
free -h | tee -a $log_file

# Disk usage
echo -e "\n>> Disk Usage (df -h):" | tee -a $log_file
df -h | tee -a $log_file

# CPU info (top 5 processes by CPU)
echo -e "\n>> Top 5 Processes by CPU:" | tee -a $log_file
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 | tee -a $log_file

echo -e "\nReport saved to $log_file"
