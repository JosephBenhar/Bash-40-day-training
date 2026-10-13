# Arrays, Loops and Service Monitoring

## What I learned
An array stores many service names. A for loop visits every item. A function performs the same check for each service.

## Key commands
- `systemctl is-active --quiet SERVICE` - succeeds when the service is active.
- `bash -n Day-36/service_monitor.sh` - check Bash syntax.
- `bash Day-36/service_monitor.sh` - run the monitoring script.

## Script
`Day-36/service_monitor.sh` checks ssh, cron, apache2, mysql and bluetooth.

## How it works
```bash
for service in "${services[@]}"; do
    check_service "$service"
done
```
`"${services[@]}"` expands to each array item separately. `$1` inside the function receives the service name. `local` keeps the function's variable scoped to the function.

## Knowledge check
Q: What happens if you add another service to the array?
A: The loop checks the new service automatically.

## Memory tricks
ARRAY = STORE MANY
LOOP = REPEAT
FUNCTION = REUSABLE JOB

## Safety and testing
A stopped service is not automatically a fault; it may not be installed or needed. Verify actual results on your Kali system before claiming the checks passed.

## Revision question
Explain why the function needs only one service argument even though five services are checked.
