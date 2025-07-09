
# SNMP Tools from `net-snmp` Package

The `net-snmp` package provides a suite of tools to work with the Simple Network Management Protocol (SNMP). Note that `net-snmp` is a **package**, not a command. After installation, you need to use specific tools provided by it.

---

## 🔧 Common Tools in `net-snmp`

| Command        | Description                            |
|----------------|----------------------------------------|
| `snmpget`      | Get data from an SNMP-enabled device   |
| `snmpwalk`     | Walk through SNMP tree of a device     |
| `snmpset`      | Set SNMP variables on a device         |
| `snmpstatus`   | Get basic status info                  |
| `snmptranslate`| Translate OIDs                         |
| `snmptrap`     | Send SNMP traps                        |
| `snmpd`        | Start the SNMP agent daemon            |

---

## ✅ Example Command

```bash
snmpwalk -v2c -c public 127.0.0.1
```
- `-v2c`: SNMP version 2c
- `-c public`: Community string (default is "public")
- `127.0.0.1`: IP address of the SNMP agent (localhost in this case)

---

## 📍 Check Installation

If installed via package manager:

```bash
which snmpwalk
```

If installed via Snap:

```bash
/snap/bin/snmpwalk -v2c -c public 127.0.0.1
```

To list installed snaps:

```bash
snap list | grep snmp
```

---

## 📦 Installing `net-snmp`

### On Ubuntu/Debian:
```bash
sudo apt install net-snmp
```

### On RedHat/CentOS:
```bash
sudo dnf install net-snmp
```

### On macOS (via Homebrew):
```bash
brew install net-snmp
```

### On systems using Snap:
```bash
sudo snap install net-snmp
```

---

## 📝 Note
If you try to run `net-snmp` directly, you'll get:
```bash
net-snmp: command not found
```
because there is no such command by that name.

Use the specific tools (`snmpwalk`, `snmpget`, etc.) instead.
