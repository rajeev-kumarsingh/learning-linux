# `ps` Command Options in Linux

The `ps` command is used to display information about active processes.

---

## 📌 Basic Syntax

```bash
ps [options]
```

---

## 📋 Common Options

| Option      | Description                                                    |
| ----------- | -------------------------------------------------------------- |
| `-e`, `-A`  | Show all processes                                             |
| `-f`        | Full-format listing                                            |
| `-l`        | Long listing format                                            |
| `-u [user]` | Show processes for a specific user                             |
| `-U [user]` | Show processes for real user ID                                |
| `-x`        | Show processes without a controlling terminal                  |
| `-a`        | Show processes of all users (except session leaders)           |
| `-r`        | Show only running processes                                    |
| `-T`        | Show processes attached to the current terminal                |
| `-N`        | Invert the selection (show processes that do NOT match)        |
| `--forest`  | Show process hierarchy (tree view)                             |
| `--sort`    | Sort output (e.g., `--sort=-%mem` for memory usage descending) |

---

## ⚙️ Commonly Used `ps` Command Combinations

```bash
ps aux                # Show all processes with detailed info
ps -ef                # Show all processes in full-format listing
ps -u username        # Show processes for a given user
ps -eo pid,ppid,cmd   # Custom output format
ps -e --forest        # Tree view of all processes
```

---

## 🧾 Output Fields

| Field       | Description                                 |
| ----------- | ------------------------------------------- |
| PID         | Process ID                                  |
| PPID        | Parent Process ID                           |
| CMD/COMMAND | Command that started the process            |
| USER        | User who owns the process                   |
| %CPU        | CPU usage                                   |
| %MEM        | Memory usage                                |
| STAT        | Process state (e.g., S=sleeping, R=running) |
| TIME        | Cumulative CPU time used                    |

---

## 🧪 Example: Top Memory Consuming Processes

```bash
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
```

This command lists processes sorted by memory usage in descending order.
