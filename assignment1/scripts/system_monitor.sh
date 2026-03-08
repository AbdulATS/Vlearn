#!/bin/bash

LOGFILE="/var/log/sysmonitor/system_metrics.log"

echo "===== $(date) =====" >> $LOGFILE
echo "CPU and Memory Usage:" >> $LOGFILE
top -b -n1 | head -10 >> $LOGFILE

echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "Top Processes:" >> $LOGFILE
ps aux --sort=-%cpu | head -5 >> $LOGFILE

echo "--------------------------" >> $LOGFILE
