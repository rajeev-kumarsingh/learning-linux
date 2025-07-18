# Partitioning and Mounting an EBS Volume on Linux

This guide explains how to partition and mount an EBS volume (e.g., `/dev/xvdbb`) on a Linux server.

---

## ✅ Option 1: Use the Whole Disk Without Partitioning (Recommended)

You’ve already done this:

- `/dev/xvdbb` is formatted with `ext4` # sudo mkfs.ext4 /dev/xvdbb
- Mounted at `/mnt/data`
- Listed in `/etc/fstab`

✅ No further action needed.

---

## ⚠️ Option 2: Partition `/dev/xvdbb` (If Needed)

> ⚠️ WARNING: This process will erase all existing data on `/dev/xvdbb`.

### Step 1: Unmount and Wipe the Disk

```bash
sudo umount /mnt/data
sudo wipefs -a /dev/xvdbb
```

### Step 2: Partition the Disk

```bash
sudo fdisk /dev/xvdbb
```

In the `fdisk` interactive shell:

- Press `n` – to create a new partition
- Press `p` – to make it a primary partition
- Press `1` – for the first partition number
- Accept defaults (or define size)
- Repeat for a second partition if needed
- Press `w` – to write changes and exit

### Step 3: Format the Partitions

```bash
sudo mkfs.ext4 /dev/xvdbb1
sudo mkfs.ext4 /dev/xvdbb2  # If you created a second one
```

### Step 4: Mount the Partitions

```bash
sudo mkdir /mnt/data1
sudo mkdir /mnt/data2

sudo mount /dev/xvdbb1 /mnt/data1
sudo mount /dev/xvdbb2 /mnt/data2  # If applicable
```

### Step 5: Add to `/etc/fstab`

Get the UUIDs:

```bash
sudo blkid
```

Edit `/etc/fstab`:

```bash
UUID=<uuid-of-xvdbb1>  /mnt/data1  ext4  defaults,nofail  0  2
UUID=<uuid-of-xvdbb2>  /mnt/data2  ext4  defaults,nofail  0  2
```

Then test:

```bash
sudo mount -a
```

---

## 📌 Final Tip

Only partition if needed. For most EBS use cases, a single full-disk format + mount is ideal.
