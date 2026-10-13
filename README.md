# 40 Days of Bash Scripting | Linux Automation

A hands-on learning journey from Bash fundamentals to building a Linux server health monitoring and backup automation tool.

**Author:** Joseph Benhar  
**Environment:** Kali Linux  
**Tools:** Bash, Vim, Git, GitHub and Linux command-line utilities

## About this repository

This repository documents 40 days of practical Bash scripting exercises. Each `Day-XX` folder contains code and revision notes. The goal was to build confidence with Linux administration tasks and create a practical project that combines monitoring, logging, error handling and backups.

## What I practised

- **Days 01–15:** Bash basics, comments, variables, user input, conditions and comparisons
- **Days 16–22:** Loops, functions and function arguments
- **Days 23–28:** Text processing with tools such as `tail`, `sort`, `uniq`, `cut` and `awk`
- **Days 29–34:** Disk monitoring, Linux services, logs, cron, debugging and reusable functions
- **Days 35–39:** Arrays, multi-service monitoring, script arguments, logging, and backup/restore
- **Day 40:** Integrated Linux Server Health & Backup Automation project

Browse the exercises in the [Day-01 through Day-40 folders](.).

## Final project: Linux Server Health & Backup Automation

**Script:** [Day-40/server_automation.sh](Day-40/server_automation.sh)  
**Notes:** [Day-40/notes.md](Day-40/notes.md)

The final Bash script:

1. Reports root filesystem disk usage with `df -h /`
2. Reports memory usage with `free -h`
3. Checks the status of SSH, Cron and Apache2 with `systemctl`
4. Appends monitoring results to a timestamped log
5. Creates timestamped `.tar.gz` archives of the Day 39 practice files
6. Reports backup success or failure using exit statuses

### Run it

On a Linux system with Bash and systemd, clone the repository into your home directory:

```bash
cd ~
git clone https://github.com/JosephBenhar/Bash-40-day-training.git
cd Bash-40-day-training
```

**Note:** The script currently uses the training folder path `$HOME/bash-40-day-training` (lowercase) as its backup source. Either rename the cloned directory to `bash-40-day-training` or adjust `SOURCE_DIR` in the script to match your clone location.

```bash
bash -n Day-40/server_automation.sh
bash Day-40/server_automation.sh
tail -n 20 ~/bash-automation/server_health.log
ls -lh ~/bash-automation/backups/
```

The script stores logs and archives in `~/bash-automation/`, outside the repository.

### Restore test

After running the script, test the most recent backup in a separate directory:

```bash
mkdir -p ~/bash-automation/restore-test
LATEST_BACKUP=$(ls -t ~/bash-automation/backups/*.tar.gz | head -n 1)
tar -xzf "$LATEST_BACKUP" -C ~/bash-automation/restore-test
diff -r Day-39/practice_files ~/bash-automation/restore-test
echo "Restore comparison exit code: $?"
```

A `diff` exit code of `0` means the restored practice files match the originals.

### Verified practical result

On my Kali Linux practice environment, the final project recorded disk and memory metrics, checked services, created two backup archives, and logged successful backup runs. I also restored the practice files and compared them with the originals using `diff -r`, which returned exit code `0`.

This is a **learning and portfolio project**, not a production-ready monitoring or disaster-recovery system. For production use, it would need configurable paths, alerting, backup retention, secure off-host storage, and broader error handling.

## Next steps

Extend the project with configurable service lists, scheduled execution, notifications, backup rotation and automated verification.

---

Built through hands-on practice, one day at a time.
