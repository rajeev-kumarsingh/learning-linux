
# 🔐 File Permissions in Linux (Detailed Guide)

In Linux, **file permissions** determine who can read, write, or execute a file. These permissions are vital for security and proper system operation.

---

## 📂 File Permission Categories

| Category | Symbol | Meaning               |
|----------|--------|------------------------|
| Owner    | `u`    | The file's creator     |
| Group    | `g`    | Users in the same group|
| Others   | `o`    | All other users        |

---

## 🔤 Permission Types

| Symbol | Meaning            |
|--------|---------------------|
| `r`    | Read (view file)    |
| `w`    | Write (modify file) |
| `x`    | Execute (run file)  |
| `-`    | No permission       |

---

## 📄 Example: `ls -l` Output

```bash
-rwxr-xr-- 1 user group 1234 Jul 1 10:00 script.sh
```

### Breakdown:

- `-`: regular file
- `rwx`: owner can read, write, execute
- `r-x`: group can read, execute
- `r--`: others can only read

---

## 🔧 Changing Permissions with `chmod`

### Symbolic Method:

```bash
chmod u+x file.sh       # Add execute to user
chmod g-w file.sh       # Remove write from group
chmod o=r file.sh       # Set others to read-only
```

### Numeric Method:

| Number | Permissions | Symbol |
|--------|-------------|--------|
| 7      | rwx         | full   |
| 6      | rw-         | read/write
| 5      | r-x         | read/execute
| 4      | r--         | read only
| 0      | ---         | none

#### Example:

```bash
chmod 755 file.sh  # rwxr-xr-x
chmod 644 file.txt # rw-r--r--
```

---

## 👥 Changing Ownership with `chown`

```bash
chown newuser:newgroup file.txt
```

- Changes the owner and group of a file

---

## 🔐 Special Permissions

| Permission | Symbol | Use Case                     |
|------------|--------|------------------------------|
| Setuid     | `s` on user | Run as file owner         |
| Setgid     | `s` on group| Run with group privileges |
| Sticky Bit | `t` on others| Only owner can delete    |

### Example:

```bash
chmod +s file        # Setuid
chmod g+s dir/       # Setgid on directory
chmod +t /tmp        # Sticky bit (common on shared dirs)
```

---

## ✅ Summary

- **Permissions** control access to files and folders.
- Use `chmod` to change permissions.
- Use `chown` to change ownership.
- Use special permissions for advanced scenarios (like shared folders).

---

*Author: ChatGPT | Date: July 2025*
