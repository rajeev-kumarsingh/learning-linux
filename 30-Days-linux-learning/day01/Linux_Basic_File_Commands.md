
# 🐧 Linux Basic File & Directory Commands - Cheat Sheet

## 1. 🧭 Navigation Commands

```bash
pwd                      # Print current working directory
ls                       # List files and directories
ls -l                    # Detailed listing
ls -a                    # Include hidden files
cd /path/to/dir          # Go to specific directory
cd ..                    # Go up one level
cd                       # Go to home directory
```

---

## 2. 📝 Creating Files and Directories

```bash
touch file.txt           # Create a new empty file
mkdir folder             # Create a directory
mkdir -p a/b/c           # Create nested directories
```

---

## 3. 📦 Moving / Renaming Files and Directories

```bash
mv file1.txt folder/      # Move file into folder
mv old.txt new.txt        # Rename file
mv old_folder new_folder  # Rename folder
```

---

## 4. 🗑️ Deleting Files and Directories

```bash
rm file.txt              # Delete a file
rm -i file.txt           # Delete with confirmation
rm -r folder             # Recursively delete folder
rm -rf folder            # Force delete folder (dangerous)
rmdir emptyfolder        # Delete empty folder
```

---

## 🧪 Example Flow

```bash
mkdir project
cd project
touch readme.md
mkdir docs
mv readme.md docs/
cd ..
mv project project_renamed
rm -rf project_renamed
```
