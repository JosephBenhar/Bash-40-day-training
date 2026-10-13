#!/bin/bash

# Day 39 - Automated Linux Backup

SOURCE_DIR="$HOME/bash-40-day-training/Day-39/practice_files"
BACKUP_DIR="$HOME/bash-backups"

TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source directory does not exist."
    exit 1
fi

# Create backup directory
mkdir -p "$BACKUP_DIR" || exit 1

echo "Starting backup..."

# Create compressed backup
if tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .; then
    echo "SUCCESS: Backup created."
    echo "Location: $BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi
