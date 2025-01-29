# Introduction to Linux

- Linux is a free, open-source, and Unix-like operating system.

- Developed by Linus Torvalds in 1991.

- Used in servers, desktops, embedded systems, and cloud computing.

- Provides stability, security, and flexibility.

#

# Features of Linux

1. Multi-user: Multiple users can work simultaneously.

2. Multi-tasking: Runs multiple processes efficiently.

3. Portability: Runs on various hardware platforms.

4. Security: Robust user permissions and firewall support.

5. Open Source: Free to modify and distribute.

6. Shell & Scripting: Automates tasks and enhances efficiency.

#

# Linux Architecture

1. Kernel: The core of the OS, manages hardware.

2. Shell: Interface between user and kernel.

3. File System: Organizes data in a hierarchy.

4. Utilities: Essential system management tools.

#

# Linux File System Structure

| Directory | Description                     |
| --------- | ------------------------------- |
| `/`       | Root directory                  |
| `/bin`    | Essential binaries (ls, cp, mv) |
| `/home`   | User home directories           |
| `/etc`    | System configuration files      |
| `/var`    | Log and temp files              |
| `/dev`    | Device files (USB, HDD)         |
| `/tmp`    | Temporary files                 |

![alt text](./images/image.png)

1. / (Root):

Primary hierarchy root and root directory of the entire file system hierarchy.

- Every single file and directory start from the root directory.
- The only root user has the right to write under this directory.
- /root is the root user’s home directory, which is not the same as /
  ![alt text](./images/image-1.png)

2. /bin :
   Essential command binaries that need to be available in single-user mode; for all users, e.g., cat, ls, cp.

- Contains binary executables.
- Common linux commands you need to use in single-user modes are located under this directory.
- Commands used by all the users of the system are located here e.g. ps, ls, ping, grep, cp
  ![alt text](./images/image-2.png)

3. /boot :
   Boot loader files, e.g., kernels, initrd.

- Kernel initrd, vmlinux, grub files are located under /boot
- Example: initrd.img-2.6.32-24-generic, vmlinuz-2.6.32-24-generic
  ![alt text](./images/image-3.png)

4. /dev :
   Essential device files, e.g., /dev/null.

- These include terminal devices, usb, or any device attached to the system.
- Example: /dev/tty1, /dev/usbmon0
  ![alt text](./images/image-4.png)

5. /etc :
   Host-specific system-wide configuration files.

- Contains configuration files required by all programs.
- This also contains startup and shutdown shell scripts used to start/stop individual programs.
- Example: /etc/resolv.conf, /etc/logrotate.conf.
  ![alt text](./images/image-5.png)

6. /home :
   Users’ home directories, containing saved files, personal settings, etc.

- Home directories for all users to store their personal files.
- example: /home/kishlay, /home/kv
  ![alt text](./images/image-6.png)
  ![alt text](./images/image-7.png)

7. /lib:
   Libraries essential for the binaries in /bin/ and /sbin/.

- Library filenames are either ld* or lib*.so.\*
- Example: ld-2.11.1.so, libncurses.so.5.7
  ![alt text](./images/image-8.png)

8. /media:
   Mount points for removable media such as CD-ROMs (appeared in FHS-2.3).

- Temporary mount directory for removable devices.
- Examples, /media/cdrom for CD-ROM; /media/floppy for floppy drives; /media/cdrecorder for CD writer
  ![alt text](./images/image-9.png)

9. /mnt :
   Temporarily mounted filesystems.

- Temporary mount directory where sysadmins can mount filesystems.
  ![alt text](./images/image-10.png)

10. /opt :
    Optional application software packages.

- Contains add-on applications from individual vendors.
- Add-on applications should be installed under either /opt/ or /opt/ sub-directory.
  ![alt text](./images/image-11.png)

11. /sbin :
    Essential system binaries, e.g., fsck, init, route.

- Just like /bin, /sbin also contains binary executables.
- The linux commands located under this directory are used typically by system administrators, for system maintenance purposes.
- Example: iptables, reboot, fdisk, ifconfig, swapon
  ![alt text](./images/image-12.png)

12. /srv :
    Site-specific data served by this system, such as data and scripts for web servers, data offered by FTP servers, and repositories for version control systems.

- srv stands for service.
- Contains server specific services related data.
- Example, /srv/cvs contains CVS related data.
  ![alt text](./images/image-13.png)

13. /tmp :
    Temporary files. Often not preserved between system reboots and may be severely size restricted.

- Directory that contains temporary files created by system and users.
- Files under this directory are deleted when the system is rebooted.
  ![alt text](./images/image-14.png)

14. /usr :
    Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications.

- Contains binaries, libraries, documentation, and source-code for second level programs.
- /usr/bin contains binary files for user programs. If you can’t find a user binary under /bin, look under /usr/bin. For example: at, awk, cc, less, scp
- /usr/sbin contains binary files for system administrators. If you can’t find a system binary under /sbin, look under /usr/sbin. For example: atd, cron, sshd, useradd, userdel
- /usr/lib contains libraries for /usr/bin and /usr/sbin
- /usr/local contains user’s programs that you install from source. For example, when you install apache from source, it goes under /usr/local/apache2
- /usr/src holds the Linux kernel sources, header-files and documentation.
  ![alt text](./images/image-15.png)
  ![alt text](./images/image-16.png)
  ![alt text](./images/image-17.png)
  ![alt text](./images/image-18.png)
  ![alt text](./images/image-19.png)

15. /proc:
    Virtual filesystem providing process and kernel information as files. In Linux, it corresponds to a procs mount. Generally, automatically generated and populated by the system, on the fly.

- Contains information about system process.
- This is a pseudo filesystem that contains information about running processes. For example: /proc/{pid} directory contains information about the process with that particular pid.
- This is a virtual filesystem with text information about system resources. For example: /proc/uptime
  ![alt text](./images/image-20.png)
  ![alt text](./images/image-21.png)
