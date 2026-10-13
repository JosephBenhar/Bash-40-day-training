#!/usr/bin/env bash
# Day 36: arrays + loops + functions
services=("ssh" "cron" "apache2" "mysql" "bluetooth")

check_service() {
    local service="$1"
    if systemctl is-active --quiet "$service"; then
        echo "SUCCESS: $service is running"
    else
        echo "WARNING: $service is not running"
    fi
}

echo "===== Linux Service Monitoring ====="
for service in "${services[@]}"; do
    check_service "$service"
done
echo "===== Monitoring Completed ====="
