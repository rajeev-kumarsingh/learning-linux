# System Monitoring on Linux Servers (CLI Tools)

In headless or remote environments (e.g., AWS EC2, DigitalOcean droplets), GUI-based tools like `gnome-system-monitor` fail due to the absence of a graphical environment. For effective system monitoring, command-line tools are recommended.

---

## ❌ Problem: "Failed to open display"
When running:
```bash
gnome-system-monitor
```

You may encounter:
```bash
(process:52082): Gtk-WARNING **: Failed to open display
```

### Cause:
- No GUI installed
- `$DISPLAY` not set
- Running via SSH or on a headless server

---

## ✅ Recommended CLI Tools for Monitoring

### 1. `htop` – Interactive Process Viewer
```bash
sudo apt install htop
htop
```
- CPU and memory usage
- Process tree
- Sort by memory, CPU, etc.

---

### 2. `glances` – Comprehensive CLI System Monitor
```bash
sudo apt install glances
glances
```
- Multi-metric dashboard
- CPU, RAM, Disk, Network
- Web UI support

---

### 3. `top` – Built-in System Monitor
```bash
top
```
- Lightweight, no install required
- Press `M` to sort by memory, `P` for CPU

---

### 4. `nload` – Network Traffic Monitor
```bash
sudo apt install nload
nload
```
- Real-time incoming/outgoing traffic
- Interface-wise display

---

### 5. `iftop` – Real-time Bandwidth Monitor
```bash
sudo apt install iftop
sudo iftop
```
- Live network traffic per connection
- Requires root for most interfaces

---

## 🛠️ Example Installation Command
```bash
sudo apt update
sudo apt install htop glances iftop nload
```

---

## 🖥️ (Optional) Run GUI Apps with X11 Forwarding

If you **must** run `gnome-system-monitor`, use X11 forwarding:
```bash
ssh -X user@your-server-ip
gnome-system-monitor
```

- Requires X server on local machine (e.g., XQuartz on macOS, VcXsrv on Windows)
- Slower and less secure on cloud servers

---

## 📌 Best Practice

Use terminal-based tools on servers for:
- Performance
- Security
- Compatibility

GUI-based tools are best left for local desktop Linux environments.

