# Bash Arrays: Managing Multiple Servers

## What I learned
An array stores several values under one name. Bash indexed arrays start at index 0.

## Commands and examples
```bash
servers=("web01" "db01" "backup01")
echo "${servers[@]}"   # All values
echo "${servers[0]}"    # First value
echo "${servers[2]}"    # Third value
echo "${#servers[@]}"  # Number of values
```

## Practical exercise
Create an array containing ssh, cron, apache2 and mysql. Print every service, print apache2 using index 2, and count the services.

## Important
Kali's interactive terminal may use Zsh. Start `bash` for this Bash-specific array exercise.

## Memory tricks
ARRAY = ONE NAME, MANY VALUES
INDEX 0 = FIRST ITEM
@ = ALL
# = COUNT

## Revision question
Why does the third element use index 2 instead of index 3?
