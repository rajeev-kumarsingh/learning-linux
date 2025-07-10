# SNMP Configuration and Troubleshooting Guide

## 🛠️ SNMP Installation (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install snmp snmpd -y
```

---

## 🧾 SNMP Configuration File (`/etc/snmp/snmpd.conf`)

Minimal working example:

```conf
agentAddress udp:127.0.0.1
rocommunity public
sysLocation "Server Room"
sysContact admin@example.com
sysServices 72
master agentx

view systemonly included .1.3.6.1.2.1.1
view systemonly included .1.3.6.1.2.1.25.1

rocommunity public default -V systemonly
rocommunity6 public default -V systemonly
rouser authPrivUser authpriv -V systemonly

includeDir /etc/snmp/snmpd.conf.d
```

❗ **Only one** `agentAddress` should be active. Use `udp:127.0.0.1` for local testing.

---

## ✅ Service Restart Steps

```bash
sudo systemctl stop snmpd
sudo killall snmpd  # ensure no old process is holding port 161
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl start snmpd
sudo systemctl status snmpd
```

---

## 🧪 Test SNMP Locally

```bash
snmpwalk -v2c -c public 127.0.0.1
```

Expected output:

```
SNMPv2-MIB::sysDescr.0 = STRING: Linux ...
...
```

---

## 🛠️ Troubleshooting

### 🔍 Check if Port 161 is In Use

```bash
sudo lsof -iUDP:161
```

If `snmpd` is listed, kill it:

```bash
sudo killall snmpd
```

### 🔍 Run `snmpd` in Foreground for Debugging

```bash
sudo /usr/sbin/snmpd -f -Lo -C -c /etc/snmp/snmpd.conf
```

This will print exact errors like:

- Port already in use
- Invalid config syntax
- Unknown directives

---

## 🧼 Common Issues

| Problem                           | Solution                                           |
| --------------------------------- | -------------------------------------------------- |
| `Error opening endpoint udp:161`  | Port in use — kill `snmpd`, or use `udp:127.0.0.1` |
| Multiple `agentAddress` lines     | Leave only one active `agentAddress` line          |
| `snmpd` fails to start repeatedly | Run `snmpd -f -Lo -C` for exact error output       |
| `agentaddress` vs `agentAddress`  | Case-sensitive! Use `agentAddress`                 |

---

## 🧰 Cleanup Script (Optional)

```bash
sudo killall snmpd
sudo lsof -iUDP:161
sudo nano /etc/snmp/snmpd.conf
# Fix config (see above)
sudo systemctl restart snmpd
```

---

## ✅ Final Tips

- Use `udp:127.0.0.1` for local testing
- Don’t run SNMP on public-facing ports without access control
- Prefer SNMPv3 in production for encryption and authentication
