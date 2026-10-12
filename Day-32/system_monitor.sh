#!/bin/bash

LOG_FILE="$HOME/system_health.log"

echo "===== System Health Report =====" >> "$LOG_FILE"

date >> "$LOG_FILE"

uptime >> "$LOG_FILE"

df -h / >> "$LOG_FILE"

echo "--------------------------------" >> "$LOG_FILE"
