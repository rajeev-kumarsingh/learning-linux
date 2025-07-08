
# System Monitoring in Linux

Monitoring your Linux system helps ensure its health, performance, and security. Below are key aspects of system monitoring along with examples.

---

## 1. Uptime and Load

### Description
- **Uptime** tells how long the system has been running.
- **Load Average** shows the system load (number of running or waiting processes) over the last 1, 5, and 15 minutes.

### Command
```bash
uptime
```
### Example Output
```
 10:45:01 up 5 days,  3:12,  2 users,  load average: 0.08, 0.06, 0.01
```

- **Explanation**:
  - System is up for 5 days, 3 hours, and 12 minutes.
  - Load averages indicate minimal load.

---

## 2. Authentication Logs

### Description
- Logs authentication attempts (successful and failed).
- Useful for detecting brute-force or unauthorized login attempts.

### Command
```bash
sudo cat /var/log/auth.log | grep "sshd"
```
> For CentOS/RedHat: `/var/log/secure`

### Example Output
```
Jul 07 10:12:33 server sshd[2210]: Accepted password for rajeev from 192.168.1.10 port 54436 ssh2
Jul 07 10:14:47 server sshd[2234]: Failed password for invalid user root from 192.168.1.11 port 51211 ssh2
```

- **Explanation**:
  - Shows successful and failed login attempts with IP addresses.

---

## 3. Services Running

### Description
- Monitor which services are running or failed.

### Command
```bash
systemctl list-units --type=service --state=running
```

### Example Output
```
  ssh.service                 loaded active running OpenBSD Secure Shell server
  cron.service                loaded active running Regular background program processing daemon
```

- **Explanation**:
  - Lists currently active and running services.

---

## 4. Available Memory / Disk

### Memory Check

#### Command
```bash
free -h
```
#### Example Output
```
              total        used        free      shared  buff/cache   available
Mem:           7.8G        1.2G        5.4G        200M        1.2G        6.1G
Swap:          2.0G          0B        2.0G
```

### Disk Usage Check

#### Command
```bash
df -h
```
#### Example Output
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   15G   33G  31% /
```

- **Explanation**:
  - `free -h`: Shows RAM and swap usage.
  - `df -h`: Shows disk space used/available on mounted filesystems.

---

## Summary

| Metric              | Command                           | Purpose                            |
|---------------------|------------------------------------|------------------------------------|
| Uptime & Load       | `uptime`                          | Check system run time & load       |
| Authentication Logs | `sudo cat /var/log/auth.log`      | Monitor login attempts             |
| Running Services    | `systemctl list-units --type=service --state=running` | View active services |
| Memory              | `free -h`                         | Check memory usage                 |
| Disk Space          | `df -h`                           | Monitor disk space                 |
