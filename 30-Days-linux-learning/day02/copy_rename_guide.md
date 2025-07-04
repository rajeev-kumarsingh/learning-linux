
# 📁 Copying and Renaming Files in Linux (Detailed Guide)

Linux provides simple but powerful commands to copy and rename files and directories.

---

## 📄 Copying with `cp`

### 📌 Basic Syntax:

```bash
cp [options] source destination
```

---

### ✅ Examples:

#### Copy a file:

```bash
cp file1.txt backup_file.txt
```

> This creates a copy of `file1.txt` named `backup_file.txt`.

#### Copy a file into a directory:

```bash
cp file1.txt my_folder/
```

#### Copy multiple files into a directory:

```bash
cp file1.txt file2.txt my_folder/
```

#### Copy a directory (recursively):

```bash
cp -r my_folder/ backup_folder/
```

- `-r`: recursive (copy directory and contents)

#### Preserve timestamps and permissions:

```bash
cp -p file1.txt file2.txt
```

---

## ✏️ Renaming with `mv`

### 📌 Basic Syntax:

```bash
mv [options] source destination
```

> `mv` is used to move **or** rename files.

---

### ✅ Examples:

#### Rename a file:

```bash
mv old_name.txt new_name.txt
```

#### Move a file to another directory:

```bash
mv file1.txt /home/user/Documents/
```

#### Rename and move at the same time:

```bash
mv file1.txt /home/user/Documents/renamed.txt
```

---

## 🚩 Useful Options

| Command | Option | Description                   |
|---------|--------|-------------------------------|
| `cp`    | `-r`    | Recursive (for directories)   |
| `cp`    | `-p`    | Preserve permissions/time     |
| `cp`    | `-i`    | Prompt before overwrite       |
| `mv`    | `-i`    | Prompt before overwrite       |
| `mv`    | `-u`    | Only move if newer            |

---

## 🧠 Summary

- Use `cp` to **copy** files and directories
- Use `mv` to **rename or move** files/directories
- Add options like `-r`, `-p`, or `-i` for more control

---

*Author: ChatGPT | Date: July 2025*
