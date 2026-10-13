#!/bin/bash

# Day 40 - Linux Server Health & Backup Automation

set -o pipefail

BASE_DIR="$HOME/bash-automation"
BACKUP_DIR="$BASE_DIR/backups"
LOG_FILE="$BASE_DIR/server_health.log"
SOURCE_DIR="$HOME/bash-40-day-training/Day-39/practice_files"

services=("ssh" "cron" "apache2")

# Create required directories
mkdir -p "$BACKUP_DIR" || exit 1

# Log messages with timestamps
log_message() {
    local message="$1"
    local timestamp

    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    echo "[$timestamp] $message" | tee -a "$LOG_FILE"
}

# Check disk usage
check_disk() {
    log_message "===== Disk Usage ====="
    df -h / | tee -a "$LOG_FILE"
}

# Check memory usage
check_memory() {
    log_message "===== Memory Usage ====="
    free -h | tee -a "$LOG_FILE"
}

# Check Linux services
check_services() {
    log_message "===== Service Status ====="

    for service in "${services[@]}"
    do
        if systemctl is-active --quiet "$service"; then
            log_message "SUCCESS: $service is running"
        else
            log_message "WARNING: $service is not running"
        fi
    done
}

# Create a compressed backup
create_backup() {
    log_message "===== Backup Process ====="

    if [ ! -d "$SOURCE_DIR" ]; then
        log_message "ERROR: Backup source directory missing"
        return 1
    fi

    local timestamp
    local backup_file

    timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
    backup_file="$BACKUP_DIR/backup_$timestamp.tar.gz"

    if tar -czf "$backup_file" -C "$SOURCE_DIR" .; then
        log_message "SUCCESS: Backup created at $backup_file"
    else
        log_message "ERROR: Backup failed"
        return 1
    fi
}

# Main automation workflow
main() {
    log_message "===== Server Automation Started ====="

    check_disk
    check_memory
    check_services

    local backup_status=0

    create_backup || backup_status=1

    if [ "$backup_status" -eq 0 ]; then
        log_message "===== Automation Completed Successfully ====="
    else
        log_message "===== Automation Completed With Errors ====="
        return 1
    fi
}

main
