# Input and Output Redirects

## There are three different type of redirects in Linux.

## 1. Standard input(`stdin`) and has file descriptor number as `zero`.

- Input is used when feeding file content to a file
  - E.g. cat< listings

## 2. Standard Output(`stdout`) and it has file descriptor number as `one`

- by default when running a command it's output goes to the terminal. So we see that whenever you type anything on your screen, as you're typing on your keyboard, it output shows on your screen. So that's input on is your keyboard and the output is your screen. So the output of a command can be routed to a file using the greater-than symbol sign. So if you are typing something, let's say if you're typing a command, you could route the output of, that you see, from the command to another file. For example, let's say if you run,
  ls -l command,
- The output of a command can be routed to a file using `>` symbol. If using the same file for additional output or to append to the same file then use `>>`
  ls -l > listing
  E.G- ls -la >> listing

## 3. Standard error (`stderr`) and it has file descriptor number as `two`

- When a command executed we use a keyboard and that is also considered `(stdin -0)`
- That command output goes to the monitor and that output is `(stdout -1)`
- If the command produces any error on the screen then it is considered `(stderr -2)`

  - we can use redirect to route those errors from the screen.

  E.g ls -l /root 2> errorfile
  telnet localhost 2> errorfile
