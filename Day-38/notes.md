# Bash Logging and Automated Error Reports

## What I Learned
Logging records system activity for future investigation.
Timestamps help identify when events occurred.

## Important Commands
date = Display current date and time
> = Replace file content
>> = Append content
tee -a = Display and append output
tail -n 10 = Display last 10 lines
grep = Search for matching text

## My Project
service_logger.sh

## What My Script Does
1. Checks SSH, Cron and Apache2.
2. Records service status.
3. Adds timestamps.
4. Saves results to ~/service_monitor.log.
5. Preserves previous log entries.

## Memory Tricks
> = REPLACE
>> = ADD
tee = SHOW + SAVE
$() = RUN + CAPTURE

## Revision Question
Why is logging useful when investigating
a server outage?
