# Wildcards

# 🌟 Linux Wildcards Cheat Sheet

In Linux, **wildcards** are special characters used in the shell (like Bash) to represent patterns for filenames or directory names. They’re especially useful with commands like `ls`, `cp`, `mv`, and `rm`.

---

## 🔹 Common Wildcards

| Wildcard | Meaning                                            | Example                                                                |
| -------- | -------------------------------------------------- | ---------------------------------------------------------------------- |
| `*`      | Matches **zero or more** characters                | `ls *.txt` → lists all `.txt` files                                    |
| `?`      | Matches **exactly one** character                  | `ls file?.txt` → matches `file1.txt`, `fileA.txt`                      |
| `[ ]`    | Matches **one character** from a **set**           | `ls file[1-3].txt` → matches `file1.txt`, `file2.txt`, `file3.txt`     |
| `{ }`    | Matches a **list of strings**                      | `ls file{1,3,5}.txt` → matches `file1.txt`, `file3.txt`, `file5.txt`   |
| `**`     | (With `shopt -s globstar`) Matches **recursively** | `ls **/*.txt` → matches all `.txt` files in current and subdirectories |

---

## 🔹 Examples

```bash
ls *.sh                # Lists all .sh scripts in the current directory
rm file?.txt           # Deletes files like file1.txt, fileA.txt
cp data[0-9].csv /tmp  # Copies data0.csv to data9.csv to /tmp
```

## ⚠️ Be Careful with Wildcards!

Using wildcards with commands like `rm` can be dangerous:

```sh
rm -rf *

```

This will delete everything in the current directory. Always double-check before running!

## ✅ Tip

You can enable recursive globbing with:

```sh
shopt -s globstar

```

Then you can use:

```sh
ls **/*.log

```

To find all .log files in the current directory and all subdirectories.
