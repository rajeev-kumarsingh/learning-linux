# Linux Text Processing Commands with Examples

This document explains the commonly used text processing commands in Linux: `stdout`, `stdin`, `stderr`, `cut`, `paste`, `head`, `tail`, and `expand` along with real examples.

---

## 1. Standard Streams: `stdin`, `stdout`, `stderr`

### stdin (Standard Input)

- Input stream used by commands/programs to receive input.
- Typically comes from the keyboard or a file redirection.

#### Example:

```bash
echo "Enter your name:"
read name  # reads from stdin
echo "Hello, $name"
```

### stdout (Standard Output)

- Stream used to output the result of a command.
- Usually displayed on the terminal.

#### Example:

```bash
echo "This is output" > output.txt  # redirects stdout to a file
```

### stderr (Standard Error)

- Stream used for error messages.

#### Example:

```bash
ls non_existent_file 2> error.txt  # redirects stderr to a file
```

### Redirect both stdout and stderr

```bash
command > output.txt 2>&1
```

---

## 2. `cut` Command

- Used to extract sections from each line of input.

### Syntax:

```bash
cut OPTION... [FILE...]
```

### Common Options:

- `-d` : Delimiter
- `-f` : Field number

### Example:

```bash
echo "raj,devops,engineer" | cut -d"," -f2
# Output: devops
```

---

## 3. `paste` Command

- Merges lines of files side by side.

### Syntax:

```bash
paste [OPTION]... [FILE]...
```

### Example:

```bash
echo -e "raj\nsan" > names.txt
echo -e "dev\nqa" > dept.txt
paste names.txt dept.txt
# Output:
# raj	dev
# san	qa
```

---

## 4. `head` Command

- Displays the first N lines of a file.

### Syntax:

```bash
head [OPTION]... [FILE]...
```

### Example:

```bash
head -n 5 /etc/passwd  # First 5 lines
```

---

## 5. `tail` Command

- Displays the last N lines of a file.

### Syntax:

```bash
tail [OPTION]... [FILE]...
```

### Example:

```bash
tail -n 3 /etc/passwd  # Last 3 lines
```

### Monitor File in Real Time:

```bash
tail -f /var/log/syslog
```

---

## 6. `expand` Command

- Converts tabs to spaces.

### Syntax:

```bash
expand [OPTION]... [FILE]...
```

### Example:

```bash
echo -e "Name\tRole" > test.txt
expand test.txt
# Output: Name    Role
```

---

## Summary Table

| Command | Purpose                            |
| ------- | ---------------------------------- |
| stdin   | Accepts input                      |
| stdout  | Sends output                       |
| stderr  | Sends error messages               |
| cut     | Extracts text by delimiter/field   |
| paste   | Combines lines from multiple files |
| head    | Displays first N lines of a file   |
| tail    | Displays last N lines of a file    |
| expand  | Converts tab to spaces             |

---

*Created for learning Linux text processing commands with examples.*

