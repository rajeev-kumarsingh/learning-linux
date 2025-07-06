#!/bin/bash
log_file = "/var/log/syslog"
echo "File status for $log_file: "
wc -lwm $log_file
