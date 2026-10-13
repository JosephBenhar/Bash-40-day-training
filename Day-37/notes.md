# Bash Script Arguments and Command-Line Options

## What I learned
Command-line arguments allow a Bash script to
receive information directly from the terminal.

## Important symbols
$0 = Script name
$1 = First argument
$2 = Second argument
$# = Number of arguments

## Project
service_checker.sh

## Commands
bash Day-37/service_checker.sh cron
bash Day-37/service_checker.sh ssh

## Memory tricks
$1 = FIRST INPUT
$# = COUNT INPUTS
exit 1 = ERROR

## Revision question
Why is using $1 better than hardcoding
a service name inside the script?
