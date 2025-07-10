
# Process Management (Part 2)

## Killing Processes

You can terminate or "kill" a process using various tools.

### Using `kill`
Send a signal to a process using its PID (process ID).
```bash
kill -9 1234     # Forcefully kill process with PID 1234
kill -15 1234    # Gracefully terminate process with PID 1234
```

### Using `killall`
Kill all processes by name.
```bash
killall firefox
```

### Using `pkill`
Send signals to processes by name or pattern.
```bash
pkill -9 chrome
```

### Using `xkill` (GUI only)
Click on a window to kill it.
```bash
xkill
```

## Process Priorities

Linux uses a scheduling priority to determine how much CPU time a process gets. The `nice` and `renice` commands are used to set and change process priority.

### `nice`
Start a process with a specified priority (default is 0, range is -20 to 19).
```bash
nice -n 10 myscript.sh
```
Lower nice value = higher priority.

### `renice`
Change the priority of a running process.
```bash
renice -n 5 -p 1234
```
This changes the priority of process with PID 1234 to 5.

### View priority with `top`
```bash
top
```
- `PR` column: priority
- `NI` column: nice value

## Process Forking

Forking creates a new process by duplicating an existing one. In Unix-like systems, this is done using the `fork()` system call in programming (e.g., C). The shell automatically forks new processes when running commands.

### Shell Example
```bash
sleep 60 &
```
This forks a child process running `sleep` in the background.

### C Example (simplified explanation)
```c
#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        printf("This is the child process\n");
    } else {
        printf("This is the parent process\n");
    }
    return 0;
}
```

### Checking Forked Processes
Use `pstree` to view process hierarchy.
```bash
pstree -p
```

## Summary

- Use `kill`, `pkill`, `killall` to terminate processes.
- Use `nice` and `renice` to manage process CPU priority.
- Use `fork()` in programs or `&` in shell to fork processes.
