#!/bin/bash

# Day 38 - Linux Service Logging

# Location of our log file
LOG_FILE="$HOME/service_monitor.log"

# Services we want to monitor
services=("ssh" "cron" "apache2")

# Function to save messages with timestamps
log_message() {
    local message="$1"
    local timestamp

    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    echo "[$timestamp] $message" | tee -a "$LOG_FILE"
}

# Function to check Linux services
check_service() {
    local service="$1"

    if systemctl is-active --quiet "$service"; then
        log_message "SUCCESS: $service is running"
    else
        log_message "WARNING: $service is not running"
    fi
}

# Start monitoring
log_message "===== Monitoring Started ====="

# Check each service
for service in "${services[@]}"
do
    check_service "$service"
done

# Finish monitoring
log_message "===== Monitoring Completed ====="
