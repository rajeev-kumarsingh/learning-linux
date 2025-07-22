
# Logical Volume Management (LVM) in Linux

## What is LVM?

LVM (Logical Volume Manager) is a system of managing logical volumes, or filesystems, in a more flexible way than traditional partitioning. With LVM, you can:

- Resize volumes on the fly (both shrink and extend)
- Create snapshots
- Combine multiple physical volumes into a single logical volume
- Add new disks to a volume group without downtime

---

## LVM Components

- **PV (Physical Volume)**: The actual physical disk or partition (e.g., `/dev/sdb1`)
- **VG (Volume Group)**: Pool of physical volumes (e.g., `vg_data`)
- **LV (Logical Volume)**: Equivalent to a partition, created from the VG (e.g., `lv_data`)

```
+-----------+     +-----------+     +-----------+
|  /dev/sdb | --> |   PV      | --> |   VG      | --> LV --> Filesystem
+-----------+     +-----------+     +-----------+
```

---

## LVM Setup Example

### Step 1: Create a Physical Volume (PV)

```bash
sudo pvcreate /dev/sdb
```

### Step 2: Create a Volume Group (VG)

```bash
sudo vgcreate vg_data /dev/sdb
```

### Step 3: Create a Logical Volume (LV)

```bash
sudo lvcreate -L 5G -n lv_data vg_data
```

### Step 4: Format the Logical Volume

```bash
sudo mkfs.ext4 /dev/vg_data/lv_data
```

### Step 5: Mount the Logical Volume

```bash
sudo mkdir /mnt/data
sudo mount /dev/vg_data/lv_data /mnt/data
```

### Step 6: Make it Permanent

Add to `/etc/fstab`:

```bash
/dev/vg_data/lv_data /mnt/data ext4 defaults 0 0
```

---

## LVM Commands Overview

| Command | Description |
|---------|-------------|
| `pvcreate` | Initializes a disk or partition as a PV |
| `vgcreate` | Creates a volume group from PVs |
| `lvcreate` | Creates an LV from a VG |
| `lvextend` | Expands an existing LV |
| `lvreduce` | Shrinks an LV (use with caution) |
| `vgextend` | Adds a PV to an existing VG |
| `lvremove`, `vgremove`, `pvremove` | Deletes LVs, VGs, and PVs respectively |
| `pvs`, `vgs`, `lvs` | Display info about PVs, VGs, and LVs |

---

## Example: Resize a Logical Volume

1. Extend the LV by 2G:

```bash
sudo lvextend -L +2G /dev/vg_data/lv_data
sudo resize2fs /dev/vg_data/lv_data
```

2. Reduce the LV (ensure data is backed up and volume unmounted):

```bash
sudo umount /mnt/data
sudo e2fsck -f /dev/vg_data/lv_data
sudo resize2fs /dev/vg_data/lv_data 4G
sudo lvreduce -L 4G /dev/vg_data/lv_data
sudo mount /dev/vg_data/lv_data /mnt/data
```

---

## Pros of LVM

- Flexible disk management
- Snapshots for backup
- Dynamic resizing
- Combines multiple drives

## Cons of LVM

- Slightly more complex setup
- Not all bootloaders support booting from LVM
- Data recovery can be harder if mismanaged

---

**Author**: ChatGPT  
**Last Updated**: July 2025
