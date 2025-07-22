
# Swap Memory in Linux

## What is Swap Memory?

Swap memory in Linux is a portion of the hard drive that is used as virtual memory when the system’s physical RAM (Random Access Memory) is full. It acts as an overflow area and allows the system to keep running applications even when RAM is fully utilized.

- **RAM vs Swap**: RAM is much faster than swap space, which resides on a disk.
- **Purpose**: Swap prevents crashes or out-of-memory errors by temporarily moving less-used memory pages from RAM to disk.

---

## When is Swap Used?

- When system RAM is exhausted.
- During hibernation (the entire RAM is copied to swap).
- To improve performance in systems with limited RAM (though not a substitute for adequate RAM).

---

## How to Add Swap Memory in Linux

### Step 1: Check Current Swap

```bash
swapon --show
free -h
```

### Step 2: Create a Swap File

```bash
sudo fallocate -l 2G /swapfile
```

> If `fallocate` is not available or fails, use:
```bash
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
```

### Step 3: Set Correct Permissions

```bash
sudo chmod 600 /swapfile
```

### Step 4: Mark the File as Swap

```bash
sudo mkswap /swapfile
```

### Step 5: Enable the Swap File

```bash
sudo swapon /swapfile
```

### Step 6: Make Swap Permanent

Add the following line to `/etc/fstab`:

```bash
/swapfile none swap sw 0 0
```

### Step 7: Tune Swap Settings (Optional)

You can control how aggressively Linux uses swap via `swappiness`:

```bash
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
```

To make it persistent, add this to `/etc/sysctl.conf`:

```conf
vm.swappiness=10
```

---

## Commands Summary

| Command | Description |
|--------|-------------|
| `free -h` | Shows memory usage including swap |
| `swapon --show` | Lists active swap areas |
| `fallocate` or `dd` | Creates a swap file |
| `chmod 600` | Secures the swap file |
| `mkswap` | Configures the file to be swap |
| `swapon` | Enables swap |
| `swapoff` | Disables swap |
| `vm.swappiness` | Controls swap usage behavior |

---

## Notes

- Swap on SSDs reduces lifespan due to write cycles.
- Avoid over-reliance on swap; it’s slower than RAM.
- For servers, ensure swap usage is monitored using tools like `top`, `htop`, or `vmstat`.

---

**Author**: ChatGPT  
**Last Updated**: July 2025
