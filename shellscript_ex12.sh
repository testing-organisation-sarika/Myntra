#!/bin/bash

# This script displays information about the system.

# Display the hostname of the system
echo "Hostname: $(hostname)"

# Display the current date and time
echo "Date and Time: $(date)"

# Display the system uptime
echo "System Uptime: $(uptime)"

# Display the disk usage
echo "Disk Usage:"
df -h

# Display the memory usage
echo "Memory Usage:"
free -h
