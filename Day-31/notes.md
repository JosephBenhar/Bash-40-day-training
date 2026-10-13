# Day 31 - Linux Logs and Administrator Activity

## What I learned
Linux logs are like a diary of events on a computer. They help troubleshoot services, unexpected shutdowns and security incidents.

## Commands
- `ls /var/log` - find log files.
- `sudo journalctl -b -n 10 --no-pager` - view ten recent journal entries from this boot.
- `sudo journalctl -u ssh --no-pager -n 15` - view recent SSH service entries.
- `grep "COMMAND="` - find sudo command records.
- `tail -n 5` - show the last five matching lines.
- `sed 's/.*COMMAND=//'` - remove everything through COMMAND= to show only the command.

## Practical project
`Day-31/admin_monitor.sh` lists five recent administrator commands using a pipeline.

## Debugging lesson
`cut -d '=' -f 4-` included unwanted text because the log line contained multiple equals signs. Replaced it with `sed`.

## Memory
journalctl = READ THE DIARY; grep = FIND; tail = LATEST; sed = CLEAN.

## Security
A failed local SSH login to 127.0.0.1 was a controlled exercise, not proof of an attack.

## Revision question
Explain linux logs and admin monitoring and demonstrate one command.
