#!/usr/bin/env bash

disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d '%' -f 1)

echo "Current Disk Usage: $disk_usage%"

if [ "$disk_usage" -ge 80 ]

then

	echo "Disk Status : WARNING"

else
	echo "Disk Status : Normal"

fi
