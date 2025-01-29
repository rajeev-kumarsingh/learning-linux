# Redirection & Piping

| Symbol | Description                 | Example                        |
| ------ | --------------------------- | ------------------------------ | ------ | --------- |
| `>`    | Redirect output (overwrite) | `echo "Hello" > file.txt`      |
| `>>`   | Append output               | `echo "More text" >> file.txt` |
| `<`    | Use file as input           | `sort < names.txt`             |
| `      | `                           | Pipe output to another command | `ls -l | grep txt` |
