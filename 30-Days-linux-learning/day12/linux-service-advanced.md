
# Advanced Linux Service Management Cheat Sheet

## 🛠️ Advanced Examples

### 1. Checking Multiple Services Status
```bash
systemctl status nginx sshd
```

### 2. Check a Service’s Detailed Unit Info
```bash
systemctl show apache2.service --property=ActiveState,SubState,LoadState
```

### 3. Start a Service Remotely
```bash
systemctl -H user@192.168.1.10 status docker
```

### 4. Reload Service Without Restarting
```bash
systemctl reload postfix
systemctl restart postfix
```

### 5. View Logs from Multiple Services
```bash
journalctl -u nginx.service -u php-fpm.service --since "1 hour ago"
```

### 6. Check Last Boot Errors
```bash
journalctl -b -1 -p err
```

---

## 🧠 Systemctl & Journalctl Cheat Sheet

| Task                                | Command                                                                 |
|-------------------------------------|-------------------------------------------------------------------------|
| Start/Stop/Restart a service        | `systemctl [start|stop|restart] <service>.service`                      |
| Reload config                       | `systemctl reload <service>.service`                                   |
| Check status                        | `systemctl status <service>.service`                                   |
| Enable/Disable at boot              | `systemctl [enable|disable] <service>.service`                         |
| Check enable state                  | `systemctl is-enabled <service>.service`                               |
| List active units                   | `systemctl list-units --type=service`                                  |
| Show failed units                   | `systemctl --failed`                                                   |
| Reload unit files                   | `systemctl daemon-reload`                                              |
| Edit unit overrides                 | `systemctl edit <service>.service`                                     |
| Show unit dependencies              | `systemctl list-dependencies <service>.service`                        |
| Follow logs live                    | `journalctl -u <service>.service -f`                                   |
| View recent logs                    | `journalctl -u <service>.service -n 50 --since "1 hour ago"`           |
| Filter by priority                  | `journalctl -p err -b`                                                 |
| Combine filters                     | `journalctl -u nginx.service -p warning --since today`                 |
| Vacuum old logs                     | `journalctl --vacuum-time="4weeks"`                                    |

---

## 📚 Recommended Resources

- https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units
- https://linux-audit.com/cheat-sheets/systemd/
- https://linux-audit.com/cheat-sheets/journalctl/
- https://developers.redhat.com/cheat-sheets/systemd-commands-cheat-sheet
- https://betterstack.com/community/guides/logging/how-to-control-journald-with-journalctl/
- https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6

---

Let me know if you’d like a printable PDF or one-pager.
