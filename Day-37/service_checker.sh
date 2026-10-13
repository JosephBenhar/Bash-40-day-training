#!/bin/bash

# Day 37 - Service Checker with Arguments

SERVICE="$1"

# Check whether the user provided an argument
if [ "$#" -eq 0 ]; then
    echo "ERROR: Please provide a service name."
    echo "Usage: bash service_checker.sh <service>"
    exit 1
fi

# Check the service
if systemctl is-active --quiet "$SERVICE"; then
    echo "SUCCESS: $SERVICE is running"
else
    echo "WARNING: $SERVICE is not running"
fi
