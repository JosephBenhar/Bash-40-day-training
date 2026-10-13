# Day 30 - Linux Processes, Services and Bash Monitoring

## 1. Linux Processes

A process is a program that is currently running in Linux.

Commands learned:
- ps - Shows processes in the current terminal.
- ps aux - Displays processes running across the system.
- top - Monitors processes, CPU and memory usage.
- kill PID - Sends a termination signal to a process.
- sleep 300 & - Starts a sleep process in the background.

## 2. Linux Services

A service is a program that runs in the background
to perform a specific task.

Commands learned:
- systemctl status ssh - Shows SSH service details.
- sudo systemctl start ssh - Starts SSH.
- sudo systemctl stop ssh - Stops SSH.
- sudo systemctl restart ssh - Restarts SSH.
- systemctl is-active ssh - Checks whether SSH is active.

Important concepts:
- active (running) - The service is running.
- inactive (dead) - The service is stopped.
- enabled - The service is configured to start at boot.
- disabled - The service is not configured to start at boot

## 3. Bash Service Monitoring Script

Script: Day30/service_monitor.sh

Purpose:
To check whether the SSH service is running or stopped.

Concepts learned:
- SERVICE="ssh" stores the service name in a variable.
- systemctl is-active --quiet checks the service silently.
- $? stores the exit status of the previous command.
- Exit status 0 indicates success.
- if/else allows Bash to make decisions.
- echo displays a message in the terminal.

Testing:
- SSH stopped: SSH service is STOPPED
- SSH running: SSH service is RUNNING

Both tests passed successfully.

## 4. Troubleshooting Experience

Problem:
My Bash script failed with a syntax error near `then`.

Cause:
I accidentally typed `then` instead of `else`.

Troubleshooting steps:
1. Used cat -n to display the script with line numbers.
2. Identified the incorrect statement on Line 10.
3. Opened the script in Vim.
4. Replaced `then` with `else`.
5. Saved and executed the script again.

Result:
The script successfully detected both running and stopped SSH services.

Lesson learned:
Always check Bash syntax and read error messages carefully.

REVISION QUESTION:
Explain processes and services and demonstrate one command.
