# 👤 User and Group Management in Linux

---

## 🧑‍💻 USER MANAGEMENT COMMANDS

### 🔹 `useradd` vs `adduser`

| Feature            | `useradd`                               | `adduser`                                     |
|--------------------|------------------------------------------|------------------------------------------------|
| Type               | Low-level binary                        | High-level Perl script (Debian-based systems) |
| Interactivity      | Non-interactive (needs full flags)      | Interactive prompts                           |
| Home Dir Creation  | Not by default unless `-m` used         | Creates home directory by default             |
| Default Shell      | Must specify with `-s`, else `/bin/sh`  | Prompts or uses `/bin/bash`                   |
| User Group         | Must use `-g` or `-G` manually           | Automatically creates a user group            |
| Used in            | All distros (RHEL, Ubuntu, etc.)        | Mostly Debian/Ubuntu                         |

#### ✅ Example: Create a user `john` with home directory

```bash
# Using useradd (non-interactive)
sudo useradd -m -s /bin/bash john
sudo passwd john

# Using adduser (interactive)
sudo adduser john
```

---

## 👥 GROUP MANAGEMENT COMMANDS

### 🔹 `groupadd`
Create a new group.

```bash
sudo groupadd devops
```

### 🔹 `groupdel`
Delete a group.

```bash
sudo groupdel devops
```

### 🔹 `groupmod`
Modify a group name.

```bash
sudo groupmod -n newgroupname oldgroupname
```

### 🔹 `usermod`
Modify an existing user.

#### ✅ Add user `john` to the group `devops`:

```bash
sudo usermod -aG devops john
```

#### ✅ Change user’s primary group:

```bash
sudo usermod -g devops john
```

---

### 🔹 `groups` or `id`
Check user’s group memberships:

```bash
groups john
id john
```

---

## 🔐 Grant Sudo Access to a User

### Add user to `sudo` group (Debian/Ubuntu):

```bash
sudo usermod -aG sudo john
```

### On RHEL/CentOS, use `wheel` group:

```bash
sudo usermod -aG wheel john
```

---

## 🧾 Summary Cheat Sheet

| Task                                | Command                                    |
|-------------------------------------|--------------------------------------------|
| Create user (low-level)             | `sudo useradd -m -s /bin/bash username`    |
| Create user (interactive)           | `sudo adduser username`                    |
| Create group                        | `sudo groupadd groupname`                  |
| Add user to group                   | `sudo usermod -aG groupname username`      |
| Delete user                         | `sudo userdel username`                    |
| Delete group                        | `sudo groupdel groupname`                  |
| Modify group name                   | `sudo groupmod -n newgroup oldgroup`       |
| View user groups                    | `groups username` or `id username`         |