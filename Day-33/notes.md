# Day 33 - Bash Error Handling and Debugging

## Concept
A script must detect failures rather than printing a false success message.

## Commands and syntax
- `echo $?` - Display the exit status of the immediately previous command.
- Exit code `0` = success; non-zero = failure (specific values depend on the command).
- `if [ -d "$BACKUP_DIR" ]; then` - Check whether a directory exists.
- `-f` - Check for a regular file, not a directory.
- `exit 1` - Stop the script and signal failure.
- `bash -x script.sh` - Trace the commands executed by Bash.

## Project
`Day-33/backup_checker.sh` checks whether `/home/joseph/backups` exists, prints a success/error message, and returns a failure status when missing.

## Troubleshooting
An intentionally changed test (`-d` to `-f`) demonstrated how a directory can exist but fail a file test. Restore `-d` for the final script.

In the interactive Zsh terminal, an unclosed double quote led to the `dquote>` prompt; Ctrl+C cancels incomplete input. Avoid pasting terminal output as if it were a command.

## Memory trick
0 = OK; NON-ZERO = ERROR; -d = DIRECTORY; -f = FILE; bash -x = X-RAY.

## Revision question
Explain error handling and debugging and demonstrate one command.
