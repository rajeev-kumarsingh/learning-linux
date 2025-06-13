# 📅 Cron Jobs in Linux – A Complete Guide with Examples

## 🔸 What is Cron?

`cron` is a **time-based job scheduler** in Unix-like operating systems. It allows users to schedule scripts or commands to run automatically at specified times and intervals.

The jobs run in the background and are often used for **system maintenance**, **backups**, **automated monitoring**, etc.

---

## 🔹 Crontab Syntax

A crontab (cron table) file has five fields followed by the command:

```
* * * * * command-to-be-executed
│ │ │ │ │
│ │ │ │ └───── Day of the week (0 - 7) (Sunday=0 or 7)
│ │ │ └──────── Month (1 - 12)
│ │ └──────────── Day of the month (1 - 31)
│ └──────────────── Hour (0 - 23)
└──────────────────── Minute (0 - 59)
```

---

## 🔹 Editing Crontab

To edit the current user's crontab:

```bash
crontab -e
```

---

## 🔹 Common Examples

### ✅ 1. Run a Script Every Day at 5 AM

```cron
0 5 * * * /home/user/backup.sh
```

### ✅ 2. Run a Job Every Minute

```cron
* * * * * echo "Running every minute" >> /tmp/minute.log
```

### ✅ 3. Run Every Sunday at 2 AM

```cron
0 2 * * 0 /home/user/weekly_report.sh
```

### ✅ 4. Run Every 15 Minutes

```cron
*/15 * * * * /home/user/check_status.sh
```

### ✅ 5. Run on 1st and 15th of Every Month

```cron
0 9 1,15 * * /home/user/payroll.sh
```

---

## 🔹 Special Strings in Cron

| String     | Meaning             | Equivalent To |
| ---------- | ------------------- | ------------- |
| `@reboot`  | Run once at startup |               |
| `@yearly`  | Run once a year     | `0 0 1 1 *`   |
| `@monthly` | Run once a month    | `0 0 1 * *`   |
| `@weekly`  | Run once a week     | `0 0 * * 0`   |
| `@daily`   | Run once a day      | `0 0 * * *`   |
| `@hourly`  | Run once an hour    | `0 * * * *`   |

### Example:

```cron
@reboot /home/user/startup.sh
```

---

## 🔹 View, List, and Remove Crontab

- View current crontab:

```bash
crontab -l
```

- Remove current crontab:

```bash
crontab -r
```

- Edit crontab:

```bash
crontab -e
```

---

## 🔹 Cron Logs (Check Job Status)

Check cron logs using:

```bash
grep CRON /var/log/syslog    # Debian/Ubuntu
grep CRON /var/log/cron      # CentOS/RHEL
```

---

## 🔸 Tips

- Always use **absolute paths** in scripts/commands.
- Redirect output to log files for debugging:

```cron
* * * * * /path/to/script.sh >> /tmp/cron.log 2>&1
```

---

## ✅ Summary

| Field        | Values                |
| ------------ | --------------------- |
| Minute       | 0–59                  |
| Hour         | 0–23                  |
| Day of Month | 1–31                  |
| Month        | 1–12                  |
| Day of Week  | 0–7 (0 or 7 = Sunday) |

`cron` is a powerful utility to automate tasks, save time, and ensure consistency in repeated operations.

---
