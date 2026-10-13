
#!/bin/bash

LOG_FILE="/ds1202-project/logs/sysinfo.log"

{
    echo "===== SYSTEM REPORT ====="
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "Operating System: $(grep PRETTY_NAME /etc/os-release)"
    echo "Kernel: $(uname -r)"
    echo
    echo "Memory:"
    free -h
    echo
    echo "Disk:"
    df -h /
    echo "===== END REPORT ====="
    echo
} | tee -a "$LOG_FILE"
