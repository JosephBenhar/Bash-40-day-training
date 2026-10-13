#!/bin/bash

# Function 1: Check disk usage
check_disk() {
    echo "===== Disk Usage ====="
    df -h /
}

# Function 2: Check memory usage
check_memory() {
    echo "===== Memory Usage ====="
    free -h
}

# Function 3: Check system uptime
check_uptime() {
    echo "===== System Uptime ====="
    uptime
}

echo "===== Linux Server Health Report ====="

check_disk
check_memory
check_uptime
# Function 4: Check a Linux service
check_service() {
    SERVICE="$1"

    if systemctl is-active --quiet "$SERVICE"; then
        echo "SUCCESS: $SERVICE is running"
    else
        echo "WARNING: $SERVICE is not running"
    fi
}
echo "===== Service Status ====="
check_service cron
check_service ssh

echo "===== Report Completed ====="
