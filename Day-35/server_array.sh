#!/usr/bin/env bash
# Day 35: practice indexed Bash arrays
servers=("web01" "db01" "backup01")
echo "All servers: ${servers[*]}"
echo "First server: ${servers[0]}"
echo "Third server: ${servers[2]}"
echo "Total servers: ${#servers[@]}"
