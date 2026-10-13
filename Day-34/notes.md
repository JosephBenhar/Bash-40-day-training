# Day 34 - Reusable Bash Functions and Server Health Monitoring

## Concept
A function is a reusable named block of commands. Defining a function does not execute it; calling its name does.

## Syntax
```bash
check_disk() {
    df -h /
}
check_disk
```

A function argument is accessed using `$1` (first argument).

## Project
`Day-34/server_health.sh` defines and calls functions to display:
- Root filesystem disk usage: `df -h /`
- RAM and swap: `free -h`
- Uptime and load averages: `uptime`
- Cron and SSH service status: `systemctl is-active --quiet "$SERVICE"`

## Lab results
The sample system had 94G root filesystem capacity with 17% used; Cron was running and SSH was stopped.

## Troubleshooting
Duplicate function calls caused disk/memory/uptime sections to appear twice. A duplicated completion message appeared before the service checks. The final script calls each function once and prints `Report Completed` last.

## Memory trick
VARIABLE = STORE DATA; FUNCTION = STORE A JOB; $1 = FIRST INPUT; CALL = RUN.
