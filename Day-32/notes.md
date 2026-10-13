# Day 32 - Scheduling Bash Scripts with Cron

## Concept
Cron is a Linux alarm clock: it executes commands on a schedule. Crontab is the schedule.

## Commands
- `systemctl status cron --no-pager` - Confirm Cron is running.
- `crontab -e` - Edit the current user's schedule (Vim selected).
- `crontab -l` - Display scheduled jobs.
- `tail -n 20 ~/system_health.log` - Review recent reports.

## Cron schedule
`* * * * *` = minute, hour, day of month, month, day of week. Asterisks mean every value.

Lab entry:
`* * * * * /bin/bash /home/joseph/bash-40-day-training/Day-32/system_monitor.sh`

This runs the script every minute, for testing only.

## Project
`Day-32/system_monitor.sh` appends date, uptime and root filesystem disk usage to `~/system_health.log`.

`>>` appends; `>` overwrites.

## Verification and cleanup
Different timestamps in the log showed repeated execution; a report at 15:58:01 was consistent with Cron scheduling. Remove the every-minute test job using `crontab -e` after testing to avoid unnecessary log growth.

## Memory trick
CRON = ALARM CLOCK; CRONTAB = SCHEDULE; >> = KEEP OLD ENTRIES AND ADD NEW.
