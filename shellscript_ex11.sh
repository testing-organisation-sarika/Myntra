#!/bin/bash
# Log Analysis Script

logfile="/var/log/syslog"   # Change as per your system (e.g., /var/log/messages)

if [ ! -f "$logfile" ]; then
    echo "Log file $logfile not found!"
    exit 1
fi

echo "Total lines in log file: $(wc -l < $logfile)"
echo "Number of ERROR entries: $(grep -c 'ERROR' $logfile)"
echo "Number of WARNING entries: $(grep -c 'WARNING' $logfile)"
echo "Top 5 most recent ERRORs:"
grep 'ERROR' $logfile | tail -5
