#!/bin/bash

BACKUP_DIR="/home/joseph/backups"

echo "===== Backup Directory Checker ====="

if [ -d "$BACKUP_DIR" ]; then
    echo "SUCCESS: Backup directory exists."
else
    echo "ERROR: Backup directory not found."
    exit 1
fi

echo "Backup directory check completed."
