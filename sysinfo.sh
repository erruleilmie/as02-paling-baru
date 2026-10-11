#!/bin/bash

echo "===== System Information ====="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Date and Time: $(date)"
echo "Operating System:"
uname -a
echo "Uptime:"
uptime
echo "Disk Usage:"
df -h
echo "=============================="

