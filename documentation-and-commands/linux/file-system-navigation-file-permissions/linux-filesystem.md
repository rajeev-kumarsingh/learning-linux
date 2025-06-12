# Understanding the Linux Filesystem

## File system structure and its description

- `/boot:` Contains files that is used by the boot loader(grub.cfg).
- `/root:` root user home directory. It is not same as `/`
- `/dev:` System devices(e.g- disk,cdrom,speakers,flashdrive,keyboard,etc)

```sh
 /dev
╰─ ls -la
total 11
dr-xr-xr-x   4 root         wheel           4741  1 Jun 17:52 .
drwxr-xr-x  22 root         wheel            704  4 May 11:09 ..
crw-rw-rw-   1 root         wheel     0x1d000000  1 Jun 17:52 aes_0
crw-------   1 root         wheel     0x16000001  8 Jun 14:40 afsc_type5
brw-------   1 root         operator   0x2000000  9 Jun 17:10 apfs-raw-device.2.0
crw-------   1 root         wheel      0xb000000  1 Jun 17:52 auditpipe
crw-r--r--   1 root         wheel      0xa000003  1 Jun 17:52 auditsessions
crw-------   1 root         wheel     0x1e000000  1 Jun 17:53 autofs
crw-------   1 root         wheel     0x22000000  1 Jun 17:53 autofs_control
crw-rw-rw-   1 root         wheel     0x21000016  1 Jun 17:53 autofs_homedirmounter
crw-rw-rw-   1 root         wheel     0x20000016  1 Jun 17:53 autofs_notrigger
crw-rw-rw-   1 root         wheel     0x1f00d2dc  1 Jun 17:53 autofs_nowait
crw-------   1 root         wheel     0x17000000  9 Jun 17:28 bpf0
crw-------   1 root         wheel     0x17000001  9 Jun 10:28 bpf1
crw-------   1 root         wheel     0x17000002  9 Jun 10:28 bpf2
crw-------   1 root         wheel     0x17000003  1 Jun 17:52 bpf3
crw-------   1 rajeevsingh  staff              0  8 Jun 23:06 console
crw-rw-rw-   1 root         wheel      0x9000003  1 Jun 17:53 cu.Bluetooth-Incoming-Port
crw-rw-rw-   1 root         wheel      0x9000001  1 Jun 17:52 cu.debug-console
brw-r-----   1 root         operator   0x1000000  1 Jun 17:52 disk0
brw-r-----   1 root         operator   0x1000001  1 Jun 17:52 disk0s1
brw-r-----   1 root         operator   0x1000003  1 Jun 17:52 disk0s2
brw-r-----   1 root         operator   0x1000002  1 Jun 17:52 disk0s3
brw-r-----   1 root         operator   0x1000004  1 Jun 17:52 disk1
brw-r-----   1 root         operator   0x1000005  1 Jun 17:52 disk1s1
brw-r-----   1 root         operator   0x1000006  1 Jun 17:52 disk1s2
brw-r-----   1 root         operator   0x1000007  1 Jun 17:52 disk1s3
brw-r-----   1 root         operator   0x1000009  1 Jun 17:52 disk1s4
brw-r-----   1 root         operator   0x1000008  1 Jun 17:52 disk2
brw-r-----   1 root         operator   0x100000a  1 Jun 17:52 disk2s1
brw-r-----   1 root         operator   0x100000b  1 Jun 17:52 disk2s2
brw-r-----   1 root         operator   0x100000c  1 Jun 17:52 disk3
brw-r-----   1 root         operator   0x100000d  1 Jun 17:52 disk3s1
br--r-----   1 root         operator   0x1000013  1 Jun 17:52 disk3s1s1
brw-r-----   1 root         operator   0x1000012  1 Jun 17:52 disk3s2
brw-r-----   1 root         operator   0x100000e  1 Jun 17:52 disk3s3
brw-r-----   1 root         operator   0x100000f  1 Jun 17:52 disk3s4
brw-r-----   1 root         operator   0x1000010  1 Jun 17:52 disk3s5
brw-r-----   1 root         operator   0x1000011  1 Jun 17:52 disk3s6
crw-rw-rw-   1 root         wheel     0x18000011  1 Jun 17:52 dtrace
crw-rw-rw-   1 root         wheel     0x19000000  1 Jun 17:52 dtracehelper
crw-rw-rw-   1 root         wheel              0  1 Jun 17:52 fbt
dr-xr-xr-x   1 root         wheel              0  1 Jun 17:52 fd
crw-r--r--   1 root         wheel      0xe000000  1 Jun 17:52 fsevents
crw-------   1 root         wheel      0x6000000  1 Jun 17:52 klog
crw-rw-rw-   1 root         wheel              0  1 Jun 17:52 lockstat
dr-xr-xr-x   2 root         wheel             14  1 Jun 17:52 monotonic
crw-rw-rw-   1 root         wheel     0x15000000  1 Jun 17:52 nfsclnt
crw-rw-rw-   1 root         wheel      0x3000002  9 Jun 17:30 null
crw-------   1 _logd        _logd      0x7000000  1 Jun 17:52 oslog
crw-------   1 root         wheel      0x8000000  1 Jun 17:52 oslog_stream
crw-------   1 root         wheel      0xd000000  1 Jun 17:52 pf
crw-------   1 root         wheel      0xd000001  1 Jun 17:52 pfm
crw-rw-rw-   1 root         wheel              0  1 Jun 17:52 profile
crw-rw-rw-   1 root         tty        0xf000005  9 Jun 17:30 ptmx
crw-rw-rw-   1 root         wheel      0x5000000  1 Jun 17:52 ptyp0
crw-rw-rw-   1 root         wheel      0x5000001  1 Jun 17:52 ptyp1
crw-rw-rw-   1 root         wheel      0x5000002  1 Jun 17:52 ptyp2
crw-rw-rw-   1 root         wheel      0x5000003  1 Jun 17:52 ptyp3
crw-rw-rw-   1 root         wheel      0x5000004  1 Jun 17:52 ptyp4
crw-rw-rw-   1 root         wheel      0x5000005  1 Jun 17:52 ptyp5
crw-rw-rw-   1 root         wheel      0x5000006  1 Jun 17:52 ptyp6
crw-rw-rw-   1 root         wheel      0x5000007  1 Jun 17:52 ptyp7
crw-rw-rw-   1 root         wheel      0x5000008  1 Jun 17:52 ptyp8
crw-rw-rw-   1 root         wheel      0x5000009  1 Jun 17:52 ptyp9
crw-rw-rw-   1 root         wheel      0x500000a  1 Jun 17:52 ptypa
crw-rw-rw-   1 root         wheel      0x500000b  1 Jun 17:52 ptypb
crw-rw-rw-   1 root         wheel      0x500000c  1 Jun 17:52 ptypc
crw-rw-rw-   1 root         wheel      0x500000d  1 Jun 17:52 ptypd
crw-rw-rw-   1 root         wheel      0x500000e  1 Jun 17:52 ptype
crw-rw-rw-   1 root         wheel      0x500000f  1 Jun 17:52 ptypf
crw-rw-rw-   1 root         wheel      0x5000010  1 Jun 17:52 ptyq0
crw-rw-rw-   1 root         wheel      0x5000011  1 Jun 17:52 ptyq1
crw-rw-rw-   1 root         wheel      0x5000012  1 Jun 17:52 ptyq2
crw-rw-rw-   1 root         wheel      0x5000013  1 Jun 17:52 ptyq3
crw-rw-rw-   1 root         wheel      0x5000014  1 Jun 17:52 ptyq4
crw-rw-rw-   1 root         wheel      0x5000015  1 Jun 17:52 ptyq5
crw-rw-rw-   1 root         wheel      0x5000016  1 Jun 17:52 ptyq6
crw-rw-rw-   1 root         wheel      0x5000017  1 Jun 17:52 ptyq7
crw-rw-rw-   1 root         wheel      0x5000018  1 Jun 17:52 ptyq8
crw-rw-rw-   1 root         wheel      0x5000019  1 Jun 17:52 ptyq9
crw-rw-rw-   1 root         wheel      0x500001a  1 Jun 17:52 ptyqa
crw-rw-rw-   1 root         wheel      0x500001b  1 Jun 17:52 ptyqb
crw-rw-rw-   1 root         wheel      0x500001c  1 Jun 17:52 ptyqc
crw-rw-rw-   1 root         wheel      0x500001d  1 Jun 17:52 ptyqd
crw-rw-rw-   1 root         wheel      0x500001e  1 Jun 17:52 ptyqe
crw-rw-rw-   1 root         wheel      0x500001f  1 Jun 17:52 ptyqf
crw-rw-rw-   1 root         wheel      0x5000020  1 Jun 17:52 ptyr0
crw-rw-rw-   1 root         wheel      0x5000021  1 Jun 17:52 ptyr1
crw-rw-rw-   1 root         wheel      0x5000022  1 Jun 17:52 ptyr2
crw-rw-rw-   1 root         wheel      0x5000023  1 Jun 17:52 ptyr3
crw-rw-rw-   1 root         wheel      0x5000024  1 Jun 17:52 ptyr4
crw-rw-rw-   1 root         wheel      0x5000025  1 Jun 17:52 ptyr5
crw-rw-rw-   1 root         wheel      0x5000026  1 Jun 17:52 ptyr6
crw-rw-rw-   1 root         wheel      0x5000027  1 Jun 17:52 ptyr7
crw-rw-rw-   1 root         wheel      0x5000028  1 Jun 17:52 ptyr8
crw-rw-rw-   1 root         wheel      0x5000029  1 Jun 17:52 ptyr9
crw-rw-rw-   1 root         wheel      0x500002a  1 Jun 17:52 ptyra
crw-rw-rw-   1 root         wheel      0x500002b  1 Jun 17:52 ptyrb
crw-rw-rw-   1 root         wheel      0x500002c  1 Jun 17:52 ptyrc
crw-rw-rw-   1 root         wheel      0x500002d  1 Jun 17:52 ptyrd
crw-rw-rw-   1 root         wheel      0x500002e  1 Jun 17:52 ptyre
crw-rw-rw-   1 root         wheel      0x500002f  1 Jun 17:52 ptyrf
crw-rw-rw-   1 root         wheel      0x5000030  1 Jun 17:52 ptys0
crw-rw-rw-   1 root         wheel      0x5000031  1 Jun 17:52 ptys1
crw-rw-rw-   1 root         wheel      0x5000032  1 Jun 17:52 ptys2
crw-rw-rw-   1 root         wheel      0x5000033  1 Jun 17:52 ptys3
crw-rw-rw-   1 root         wheel      0x5000034  1 Jun 17:52 ptys4
crw-rw-rw-   1 root         wheel      0x5000035  1 Jun 17:52 ptys5
crw-rw-rw-   1 root         wheel      0x5000036  1 Jun 17:52 ptys6
crw-rw-rw-   1 root         wheel      0x5000037  1 Jun 17:52 ptys7
crw-rw-rw-   1 root         wheel      0x5000038  1 Jun 17:52 ptys8
crw-rw-rw-   1 root         wheel      0x5000039  1 Jun 17:52 ptys9
crw-rw-rw-   1 root         wheel      0x500003a  1 Jun 17:52 ptysa
crw-rw-rw-   1 root         wheel      0x500003b  1 Jun 17:52 ptysb
crw-rw-rw-   1 root         wheel      0x500003c  1 Jun 17:52 ptysc
crw-rw-rw-   1 root         wheel      0x500003d  1 Jun 17:52 ptysd
crw-rw-rw-   1 root         wheel      0x500003e  1 Jun 17:52 ptyse
crw-rw-rw-   1 root         wheel      0x500003f  1 Jun 17:52 ptysf
crw-rw-rw-   1 root         wheel      0x5000040  1 Jun 17:52 ptyt0
crw-rw-rw-   1 root         wheel      0x5000041  1 Jun 17:52 ptyt1
crw-rw-rw-   1 root         wheel      0x5000042  1 Jun 17:52 ptyt2
crw-rw-rw-   1 root         wheel      0x5000043  1 Jun 17:52 ptyt3
crw-rw-rw-   1 root         wheel      0x5000044  1 Jun 17:52 ptyt4
crw-rw-rw-   1 root         wheel      0x5000045  1 Jun 17:52 ptyt5
crw-rw-rw-   1 root         wheel      0x5000046  1 Jun 17:52 ptyt6
crw-rw-rw-   1 root         wheel      0x5000047  1 Jun 17:52 ptyt7
crw-rw-rw-   1 root         wheel      0x5000048  1 Jun 17:52 ptyt8
crw-rw-rw-   1 root         wheel      0x5000049  1 Jun 17:52 ptyt9
crw-rw-rw-   1 root         wheel      0x500004a  1 Jun 17:52 ptyta
crw-rw-rw-   1 root         wheel      0x500004b  1 Jun 17:52 ptytb
crw-rw-rw-   1 root         wheel      0x500004c  1 Jun 17:52 ptytc
crw-rw-rw-   1 root         wheel      0x500004d  1 Jun 17:52 ptytd
crw-rw-rw-   1 root         wheel      0x500004e  1 Jun 17:52 ptyte
crw-rw-rw-   1 root         wheel      0x500004f  1 Jun 17:52 ptytf
crw-rw-rw-   1 root         wheel      0x5000050  1 Jun 17:52 ptyu0
crw-rw-rw-   1 root         wheel      0x5000051  1 Jun 17:52 ptyu1
crw-rw-rw-   1 root         wheel      0x5000052  1 Jun 17:52 ptyu2
crw-rw-rw-   1 root         wheel      0x5000053  1 Jun 17:52 ptyu3
crw-rw-rw-   1 root         wheel      0x5000054  1 Jun 17:52 ptyu4
crw-rw-rw-   1 root         wheel      0x5000055  1 Jun 17:52 ptyu5
crw-rw-rw-   1 root         wheel      0x5000056  1 Jun 17:52 ptyu6
crw-rw-rw-   1 root         wheel      0x5000057  1 Jun 17:52 ptyu7
crw-rw-rw-   1 root         wheel      0x5000058  1 Jun 17:52 ptyu8
crw-rw-rw-   1 root         wheel      0x5000059  1 Jun 17:52 ptyu9
crw-rw-rw-   1 root         wheel      0x500005a  1 Jun 17:52 ptyua
crw-rw-rw-   1 root         wheel      0x500005b  1 Jun 17:52 ptyub
crw-rw-rw-   1 root         wheel      0x500005c  1 Jun 17:52 ptyuc
crw-rw-rw-   1 root         wheel      0x500005d  1 Jun 17:52 ptyud
crw-rw-rw-   1 root         wheel      0x500005e  1 Jun 17:52 ptyue
crw-rw-rw-   1 root         wheel      0x500005f  1 Jun 17:52 ptyuf
crw-rw-rw-   1 root         wheel      0x5000060  1 Jun 17:52 ptyv0
crw-rw-rw-   1 root         wheel      0x5000061  1 Jun 17:52 ptyv1
crw-rw-rw-   1 root         wheel      0x5000062  1 Jun 17:52 ptyv2
crw-rw-rw-   1 root         wheel      0x5000063  1 Jun 17:52 ptyv3
crw-rw-rw-   1 root         wheel      0x5000064  1 Jun 17:52 ptyv4
crw-rw-rw-   1 root         wheel      0x5000065  1 Jun 17:52 ptyv5
crw-rw-rw-   1 root         wheel      0x5000066  1 Jun 17:52 ptyv6
crw-rw-rw-   1 root         wheel      0x5000067  1 Jun 17:52 ptyv7
crw-rw-rw-   1 root         wheel      0x5000068  1 Jun 17:52 ptyv8
crw-rw-rw-   1 root         wheel      0x5000069  1 Jun 17:52 ptyv9
crw-rw-rw-   1 root         wheel      0x500006a  1 Jun 17:52 ptyva
crw-rw-rw-   1 root         wheel      0x500006b  1 Jun 17:52 ptyvb
crw-rw-rw-   1 root         wheel      0x500006c  1 Jun 17:52 ptyvc
crw-rw-rw-   1 root         wheel      0x500006d  1 Jun 17:52 ptyvd
crw-rw-rw-   1 root         wheel      0x500006e  1 Jun 17:52 ptyve
crw-rw-rw-   1 root         wheel      0x500006f  1 Jun 17:52 ptyvf
crw-rw-rw-   1 root         wheel      0x5000070  1 Jun 17:52 ptyw0
crw-rw-rw-   1 root         wheel      0x5000071  1 Jun 17:52 ptyw1
crw-rw-rw-   1 root         wheel      0x5000072  1 Jun 17:52 ptyw2
crw-rw-rw-   1 root         wheel      0x5000073  1 Jun 17:52 ptyw3
crw-rw-rw-   1 root         wheel      0x5000074  1 Jun 17:52 ptyw4
crw-rw-rw-   1 root         wheel      0x5000075  1 Jun 17:52 ptyw5
crw-rw-rw-   1 root         wheel      0x5000076  1 Jun 17:52 ptyw6
crw-rw-rw-   1 root         wheel      0x5000077  1 Jun 17:52 ptyw7
crw-rw-rw-   1 root         wheel      0x5000078  1 Jun 17:52 ptyw8
crw-rw-rw-   1 root         wheel      0x5000079  1 Jun 17:52 ptyw9
crw-rw-rw-   1 root         wheel      0x500007a  1 Jun 17:52 ptywa
crw-rw-rw-   1 root         wheel      0x500007b  1 Jun 17:52 ptywb
crw-rw-rw-   1 root         wheel      0x500007c  1 Jun 17:52 ptywc
crw-rw-rw-   1 root         wheel      0x500007d  1 Jun 17:52 ptywd
crw-rw-rw-   1 root         wheel      0x500007e  1 Jun 17:52 ptywe
crw-rw-rw-   1 root         wheel      0x500007f  1 Jun 17:52 ptywf
crw-rw-rw-   1 root         wheel     0x11000000  9 Jun 06:50 random
crw-r-----   1 root         operator   0x1000000  1 Jun 17:52 rdisk0
crw-r-----   1 root         operator   0x1000001  1 Jun 17:52 rdisk0s1
crw-r-----   1 root         operator   0x1000003  1 Jun 17:52 rdisk0s2
crw-r-----   1 root         operator   0x1000002  1 Jun 17:52 rdisk0s3
crw-r-----   1 root         operator   0x1000004  1 Jun 17:52 rdisk1
crw-r-----   1 root         operator   0x1000005  1 Jun 17:52 rdisk1s1
crw-r-----   1 root         operator   0x1000006  1 Jun 17:52 rdisk1s2
crw-r-----   1 root         operator   0x1000007  1 Jun 17:52 rdisk1s3
crw-r-----   1 root         operator   0x1000009  1 Jun 17:52 rdisk1s4
crw-r-----   1 root         operator   0x1000008  1 Jun 17:52 rdisk2
crw-r-----   1 root         operator   0x100000a  1 Jun 17:52 rdisk2s1
crw-r-----   1 root         operator   0x100000b  1 Jun 17:52 rdisk2s2
crw-r-----   1 root         operator   0x100000c  1 Jun 17:52 rdisk3
crw-r-----   1 root         operator   0x100000d  1 Jun 17:52 rdisk3s1
cr--r-----   1 root         operator   0x1000013  1 Jun 17:52 rdisk3s1s1
crw-r-----   1 root         operator   0x1000012  1 Jun 17:52 rdisk3s2
crw-r-----   1 root         operator   0x100000e  1 Jun 17:52 rdisk3s3
crw-r-----   1 root         operator   0x100000f  1 Jun 17:52 rdisk3s4
crw-r-----   1 root         operator   0x1000010  1 Jun 17:52 rdisk3s5
crw-r-----   1 root         operator   0x1000011  1 Jun 17:52 rdisk3s6
lr-xr-xr-x   1 root         wheel              0  1 Jun 17:52 stderr -> fd/2
lr-xr-xr-x   1 root         wheel              0  1 Jun 17:52 stdin -> fd/0
lr-xr-xr-x   1 root         wheel              0  1 Jun 17:52 stdout -> fd/1
crw-rw-rw-   1 root         wheel      0x2000000  9 Jun 13:55 tty
crw-rw-rw-   1 root         wheel      0x9000002  1 Jun 17:53 tty.Bluetooth-Incoming-Port
crw-rw-rw-   1 root         wheel      0x9000000  1 Jun 17:52 tty.debug-console
crw-rw-rw-   1 root         wheel      0x4000000  1 Jun 17:52 ttyp0
crw-rw-rw-   1 root         wheel      0x4000001  1 Jun 17:52 ttyp1
crw-rw-rw-   1 root         wheel      0x4000002  1 Jun 17:52 ttyp2
crw-rw-rw-   1 root         wheel      0x4000003  1 Jun 17:52 ttyp3
crw-rw-rw-   1 root         wheel      0x4000004  1 Jun 17:52 ttyp4
crw-rw-rw-   1 root         wheel      0x4000005  1 Jun 17:52 ttyp5
crw-rw-rw-   1 root         wheel      0x4000006  1 Jun 17:52 ttyp6
crw-rw-rw-   1 root         wheel      0x4000007  1 Jun 17:52 ttyp7
crw-rw-rw-   1 root         wheel      0x4000008  1 Jun 17:52 ttyp8
crw-rw-rw-   1 root         wheel      0x4000009  1 Jun 17:52 ttyp9
crw-rw-rw-   1 root         wheel      0x400000a  1 Jun 17:52 ttypa
crw-rw-rw-   1 root         wheel      0x400000b  1 Jun 17:52 ttypb
crw-rw-rw-   1 root         wheel      0x400000c  1 Jun 17:52 ttypc
crw-rw-rw-   1 root         wheel      0x400000d  1 Jun 17:52 ttypd
crw-rw-rw-   1 root         wheel      0x400000e  1 Jun 17:52 ttype
crw-rw-rw-   1 root         wheel      0x400000f  1 Jun 17:52 ttypf
crw-rw-rw-   1 root         wheel      0x4000010  1 Jun 17:52 ttyq0
crw-rw-rw-   1 root         wheel      0x4000011  1 Jun 17:52 ttyq1
crw-rw-rw-   1 root         wheel      0x4000012  1 Jun 17:52 ttyq2
crw-rw-rw-   1 root         wheel      0x4000013  1 Jun 17:52 ttyq3
crw-rw-rw-   1 root         wheel      0x4000014  1 Jun 17:52 ttyq4
crw-rw-rw-   1 root         wheel      0x4000015  1 Jun 17:52 ttyq5
crw-rw-rw-   1 root         wheel      0x4000016  1 Jun 17:52 ttyq6
crw-rw-rw-   1 root         wheel      0x4000017  1 Jun 17:52 ttyq7
crw-rw-rw-   1 root         wheel      0x4000018  1 Jun 17:52 ttyq8
crw-rw-rw-   1 root         wheel      0x4000019  1 Jun 17:52 ttyq9
crw-rw-rw-   1 root         wheel      0x400001a  1 Jun 17:52 ttyqa
crw-rw-rw-   1 root         wheel      0x400001b  1 Jun 17:52 ttyqb
crw-rw-rw-   1 root         wheel      0x400001c  1 Jun 17:52 ttyqc
crw-rw-rw-   1 root         wheel      0x400001d  1 Jun 17:52 ttyqd
crw-rw-rw-   1 root         wheel      0x400001e  1 Jun 17:52 ttyqe
crw-rw-rw-   1 root         wheel      0x400001f  1 Jun 17:52 ttyqf
crw-rw-rw-   1 root         wheel      0x4000020  1 Jun 17:52 ttyr0
crw-rw-rw-   1 root         wheel      0x4000021  1 Jun 17:52 ttyr1
crw-rw-rw-   1 root         wheel      0x4000022  1 Jun 17:52 ttyr2
crw-rw-rw-   1 root         wheel      0x4000023  1 Jun 17:52 ttyr3
crw-rw-rw-   1 root         wheel      0x4000024  1 Jun 17:52 ttyr4
crw-rw-rw-   1 root         wheel      0x4000025  1 Jun 17:52 ttyr5
crw-rw-rw-   1 root         wheel      0x4000026  1 Jun 17:52 ttyr6
crw-rw-rw-   1 root         wheel      0x4000027  1 Jun 17:52 ttyr7
crw-rw-rw-   1 root         wheel      0x4000028  1 Jun 17:52 ttyr8
crw-rw-rw-   1 root         wheel      0x4000029  1 Jun 17:52 ttyr9
crw-rw-rw-   1 root         wheel      0x400002a  1 Jun 17:52 ttyra
crw-rw-rw-   1 root         wheel      0x400002b  1 Jun 17:52 ttyrb
crw-rw-rw-   1 root         wheel      0x400002c  1 Jun 17:52 ttyrc
crw-rw-rw-   1 root         wheel      0x400002d  1 Jun 17:52 ttyrd
crw-rw-rw-   1 root         wheel      0x400002e  1 Jun 17:52 ttyre
crw-rw-rw-   1 root         wheel      0x400002f  1 Jun 17:52 ttyrf
crw-rw-rw-   1 root         wheel      0x4000030  1 Jun 17:52 ttys0
crw--w----   1 rajeevsingh  tty       0x10000000  9 Jun 17:11 ttys000
crw--w----   1 root         tty       0x10000001  9 Jun 14:04 ttys001
crw--w----   1 root         tty       0x10000002  9 Jun 14:06 ttys002
crw--w----   1 rajeevsingh  tty       0x10000003  9 Jun 14:08 ttys003
crw--w----   1 rajeevsingh  tty       0x10000004  9 Jun 17:30 ttys004
crw-rw-rw-   1 root         wheel      0x4000031  1 Jun 17:52 ttys1
crw-rw-rw-   1 root         wheel      0x4000032  1 Jun 17:52 ttys2
crw-rw-rw-   1 root         wheel      0x4000033  1 Jun 17:52 ttys3
crw-rw-rw-   1 root         wheel      0x4000034  1 Jun 17:52 ttys4
crw-rw-rw-   1 root         wheel      0x4000035  1 Jun 17:52 ttys5
crw-rw-rw-   1 root         wheel      0x4000036  1 Jun 17:52 ttys6
crw-rw-rw-   1 root         wheel      0x4000037  1 Jun 17:52 ttys7
crw-rw-rw-   1 root         wheel      0x4000038  1 Jun 17:52 ttys8
crw-rw-rw-   1 root         wheel      0x4000039  1 Jun 17:52 ttys9
crw-rw-rw-   1 root         wheel      0x400003a  1 Jun 17:52 ttysa
crw-rw-rw-   1 root         wheel      0x400003b  1 Jun 17:52 ttysb
crw-rw-rw-   1 root         wheel      0x400003c  1 Jun 17:52 ttysc
crw-rw-rw-   1 root         wheel      0x400003d  1 Jun 17:52 ttysd
crw-rw-rw-   1 root         wheel      0x400003e  1 Jun 17:52 ttyse
crw-rw-rw-   1 root         wheel      0x400003f  1 Jun 17:52 ttysf
crw-rw-rw-   1 root         wheel      0x4000040  1 Jun 17:52 ttyt0
crw-rw-rw-   1 root         wheel      0x4000041  1 Jun 17:52 ttyt1
crw-rw-rw-   1 root         wheel      0x4000042  1 Jun 17:52 ttyt2
crw-rw-rw-   1 root         wheel      0x4000043  1 Jun 17:52 ttyt3
crw-rw-rw-   1 root         wheel      0x4000044  1 Jun 17:52 ttyt4
crw-rw-rw-   1 root         wheel      0x4000045  1 Jun 17:52 ttyt5
crw-rw-rw-   1 root         wheel      0x4000046  1 Jun 17:52 ttyt6
crw-rw-rw-   1 root         wheel      0x4000047  1 Jun 17:52 ttyt7
crw-rw-rw-   1 root         wheel      0x4000048  1 Jun 17:52 ttyt8
crw-rw-rw-   1 root         wheel      0x4000049  1 Jun 17:52 ttyt9
crw-rw-rw-   1 root         wheel      0x400004a  1 Jun 17:52 ttyta
crw-rw-rw-   1 root         wheel      0x400004b  1 Jun 17:52 ttytb
crw-rw-rw-   1 root         wheel      0x400004c  1 Jun 17:52 ttytc
crw-rw-rw-   1 root         wheel      0x400004d  1 Jun 17:52 ttytd
crw-rw-rw-   1 root         wheel      0x400004e  1 Jun 17:52 ttyte
crw-rw-rw-   1 root         wheel      0x400004f  1 Jun 17:52 ttytf
crw-rw-rw-   1 root         wheel      0x4000050  1 Jun 17:52 ttyu0
crw-rw-rw-   1 root         wheel      0x4000051  1 Jun 17:52 ttyu1
crw-rw-rw-   1 root         wheel      0x4000052  1 Jun 17:52 ttyu2
crw-rw-rw-   1 root         wheel      0x4000053  1 Jun 17:52 ttyu3
crw-rw-rw-   1 root         wheel      0x4000054  1 Jun 17:52 ttyu4
crw-rw-rw-   1 root         wheel      0x4000055  1 Jun 17:52 ttyu5
crw-rw-rw-   1 root         wheel      0x4000056  1 Jun 17:52 ttyu6
crw-rw-rw-   1 root         wheel      0x4000057  1 Jun 17:52 ttyu7
crw-rw-rw-   1 root         wheel      0x4000058  1 Jun 17:52 ttyu8
crw-rw-rw-   1 root         wheel      0x4000059  1 Jun 17:52 ttyu9
crw-rw-rw-   1 root         wheel      0x400005a  1 Jun 17:52 ttyua
crw-rw-rw-   1 root         wheel      0x400005b  1 Jun 17:52 ttyub
crw-rw-rw-   1 root         wheel      0x400005c  1 Jun 17:52 ttyuc
crw-rw-rw-   1 root         wheel      0x400005d  1 Jun 17:52 ttyud
crw-rw-rw-   1 root         wheel      0x400005e  1 Jun 17:52 ttyue
crw-rw-rw-   1 root         wheel      0x400005f  1 Jun 17:52 ttyuf
crw-rw-rw-   1 root         wheel      0x4000060  1 Jun 17:52 ttyv0
crw-rw-rw-   1 root         wheel      0x4000061  1 Jun 17:52 ttyv1
crw-rw-rw-   1 root         wheel      0x4000062  1 Jun 17:52 ttyv2
crw-rw-rw-   1 root         wheel      0x4000063  1 Jun 17:52 ttyv3
crw-rw-rw-   1 root         wheel      0x4000064  1 Jun 17:52 ttyv4
crw-rw-rw-   1 root         wheel      0x4000065  1 Jun 17:52 ttyv5
crw-rw-rw-   1 root         wheel      0x4000066  1 Jun 17:52 ttyv6
crw-rw-rw-   1 root         wheel      0x4000067  1 Jun 17:52 ttyv7
crw-rw-rw-   1 root         wheel      0x4000068  1 Jun 17:52 ttyv8
crw-rw-rw-   1 root         wheel      0x4000069  1 Jun 17:52 ttyv9
crw-rw-rw-   1 root         wheel      0x400006a  1 Jun 17:52 ttyva
crw-rw-rw-   1 root         wheel      0x400006b  1 Jun 17:52 ttyvb
crw-rw-rw-   1 root         wheel      0x400006c  1 Jun 17:52 ttyvc
crw-rw-rw-   1 root         wheel      0x400006d  1 Jun 17:52 ttyvd
crw-rw-rw-   1 root         wheel      0x400006e  1 Jun 17:52 ttyve
crw-rw-rw-   1 root         wheel      0x400006f  1 Jun 17:52 ttyvf
crw-rw-rw-   1 root         wheel      0x4000070  1 Jun 17:52 ttyw0
crw-rw-rw-   1 root         wheel      0x4000071  1 Jun 17:52 ttyw1
crw-rw-rw-   1 root         wheel      0x4000072  1 Jun 17:52 ttyw2
crw-rw-rw-   1 root         wheel      0x4000073  1 Jun 17:52 ttyw3
crw-rw-rw-   1 root         wheel      0x4000074  1 Jun 17:52 ttyw4
crw-rw-rw-   1 root         wheel      0x4000075  1 Jun 17:52 ttyw5
crw-rw-rw-   1 root         wheel      0x4000076  1 Jun 17:52 ttyw6
crw-rw-rw-   1 root         wheel      0x4000077  1 Jun 17:52 ttyw7
crw-rw-rw-   1 root         wheel      0x4000078  1 Jun 17:52 ttyw8
crw-rw-rw-   1 root         wheel      0x4000079  1 Jun 17:52 ttyw9
crw-rw-rw-   1 root         wheel      0x400007a  1 Jun 17:52 ttywa
crw-rw-rw-   1 root         wheel      0x400007b  1 Jun 17:52 ttywb
crw-rw-rw-   1 root         wheel      0x400007c  1 Jun 17:52 ttywc
crw-rw-rw-   1 root         wheel      0x400007d  1 Jun 17:52 ttywd
crw-rw-rw-   1 root         wheel      0x400007e  1 Jun 17:52 ttywe
crw-rw-rw-   1 root         wheel      0x400007f  1 Jun 17:52 ttywf
crw-rw-rw-   1 root         wheel     0x14000000  1 Jun 17:52 uart.debug-console
crw-rw-rw-   1 root         wheel     0x11000001  1 Jun 17:52 urandom
crw-rw-rw-   1 root         wheel      0x3000003  1 Jun 17:52 zero

```

- `/etc:` Configurations files
  ![alt text](image-1.png)
- `/bin` or `/usr/bin:` Everyday User Commands
  ![alt text](image.png)
- `/sbin or /usr/sbin:` System/Filesystem comnmands

```sh
/sbin
╰─ ls -la
total 4760
drwxr-xr-x@ 76 root  wheel     2432  4 May 11:09 .
drwxr-xr-x  22 root  wheel      704  4 May 11:09 ..
lrwxr-xr-x   1 root  wheel       68  4 May 11:09 apfs_hfs_convert -> ../System/Library/Filesystems/apfs.fs/Contents/Resources/hfs_convert
-rwxr-xr-x   1 root  wheel   154624  4 May 11:09 apfs_unlockfv
-rwxr-xr-x   1 root  wheel   137296  4 May 11:09 disklabel
-rwxr-xr-x   1 root  wheel   101168  4 May 11:09 dmesg
-rwxr-xr-x   1 root  wheel   102320  4 May 11:09 dynamic_pager
-rwxr-xr-x   1 root  wheel   172640  4 May 11:09 fibreconfig
-r-xr-xr-x   1 root  wheel   118944  4 May 11:09 fsck
lrwxr-xr-x   1 root  wheel       66  4 May 11:09 fsck_apfs -> ../System/Library/Filesystems/apfs.fs/Contents/Resources/fsck_apfs
-rwxr-xr-x   1 root  wheel   341904  4 May 11:09 fsck_cs
lrwxr-xr-x   1 root  wheel       66  4 May 11:09 fsck_exfat -> /System/Library/Filesystems/exfat.fs/Contents/Resources/fsck_exfat
-r-xr-xr-x   1 root  wheel   137776  4 May 11:09 fsck_fskit
lrwxr-xr-x   1 root  wheel       62  4 May 11:09 fsck_hfs -> /System/Library/Filesystems/hfs.fs/Contents/Resources/fsck_hfs
lrwxr-xr-x   1 root  wheel       66  4 May 11:09 fsck_msdos -> /System/Library/Filesystems/msdos.fs/Contents/Resources/fsck_msdos
lrwxr-xr-x   1 root  wheel       62  4 May 11:09 fsck_udf -> /System/Library/Filesystems/udf.fs/Contents/Resources/fsck_udf
-r-xr-xr-x   1 root  wheel   101344  4 May 11:09 fstyp
-r-xr-xr-x   1 root  wheel   101392  4 May 11:09 fstyp_hfs
-r-xr-xr-x   1 root  wheel   101552  4 May 11:09 fstyp_msdos
-r-xr-xr-x   1 root  wheel   101536  4 May 11:09 fstyp_ntfs
-r-xr-xr-x   1 root  wheel   101568  4 May 11:09 fstyp_udf
-rwxr-xr-x   2 root  wheel   120176  4 May 11:09 halt
-r-xr-xr-x   1 root  wheel   253024  4 May 11:09 ifconfig
-rwxr-xr-x   1 root  wheel   212992  4 May 11:09 kextload
-rwxr-xr-x   1 root  wheel   137680  4 May 11:09 kextunload
-rwxr-xr-x   1 root  wheel  1147200  4 May 11:09 launchd
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 md5
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 md5sum
-rwxr-xr-x   1 root  wheel   118512  4 May 11:09 mknod
-r-xr-xr-x   1 root  wheel   171904  4 May 11:09 mount
-rwxr-xr-x   1 root  wheel   136608  4 May 11:09 mount_9p
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 mount_acfs -> /System/Library/Filesystems/acfs.fs/Contents/bin/redirection.sh
-rwxr-xr-x   1 root  wheel   134960  4 May 11:09 mount_afp
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 mount_apfs -> ../System/Library/Filesystems/apfs.fs/Contents/Resources/mount_apfs
lrwxr-xr-x   1 root  wheel       69  4 May 11:09 mount_cd9660 -> /System/Library/Filesystems/cd9660.fs/Contents/Resources/mount_cd9660
lrwxr-xr-x   1 root  wheel       69  4 May 11:09 mount_cddafs -> /System/Library/Filesystems/cddafs.fs/Contents/Resources/mount_cddafs
-r-xr-xr-x   1 root  wheel   117712  4 May 11:09 mount_devfs
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 mount_exfat -> /System/Library/Filesystems/exfat.fs/Contents/Resources/mount_exfat
-r-xr-xr-x   1 root  wheel   117888  4 May 11:09 mount_fdesc
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 mount_ftp -> /System/Library/Filesystems/ftp.fs/Contents/Resources/mount_ftp
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 mount_hfs -> /System/Library/Filesystems/hfs.fs/Contents/Resources/mount_hfs
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 mount_msdos -> /System/Library/Filesystems/msdos.fs/Contents/Resources/mount_msdos
-rwxr-xr-x   1 root  wheel   204288  4 May 11:09 mount_nfs
-r-xr-xr-x   1 root  wheel   195408  4 May 11:09 mount_smbfs
lrwxr-xr-x   1 root  wheel       69  4 May 11:09 mount_tmpfs -> ../System/Library/Filesystems/tmpfs.fs/Contents/Resources/mount_tmpfs
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 mount_udf -> /System/Library/Filesystems/udf.fs/Contents/Resources/mount_udf
lrwxr-xr-x   1 root  wheel       75  4 May 11:09 mount_virtiofs -> ../System/Library/Filesystems/virtiofs.fs/Contents/Resources/mount_virtiofs
-rwxr-xr-x   1 root  wheel   101344  4 May 11:09 mount_webdav
-rwxr-xr-x   1 root  wheel   323536  4 May 11:09 mpioutil
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 newfs_apfs -> ../System/Library/Filesystems/apfs.fs/Contents/Resources/newfs_apfs
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 newfs_exfat -> /System/Library/Filesystems/exfat.fs/Contents/Resources/newfs_exfat
-r-xr-xr-x   1 root  wheel   137776  4 May 11:09 newfs_fskit
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 newfs_hfs -> /System/Library/Filesystems/hfs.fs/Contents/Resources/newfs_hfs
lrwxr-xr-x   1 root  wheel       67  4 May 11:09 newfs_msdos -> /System/Library/Filesystems/msdos.fs/Contents/Resources/newfs_msdos
lrwxr-xr-x   1 root  wheel       63  4 May 11:09 newfs_udf -> /System/Library/Filesystems/udf.fs/Contents/Resources/newfs_udf
-rwxr-xr-x   1 root  wheel   292384  4 May 11:09 nfsd
-rwxr-xr-x   1 root  wheel   101264  4 May 11:09 nfsiod
-rwxr-xr-x   1 root  wheel   100992  4 May 11:09 nologin
-r-xr-xr-x   1 root  wheel   484608  4 May 11:09 pfctl
-r-xr-xr-x   1 root  wheel   170624  4 May 11:09 ping
-r-xr-xr-x   1 root  wheel   204208  4 May 11:09 ping6
-r-xr-xr-x   1 root  wheel   135872  4 May 11:09 quotacheck
-rwxr-xr-x   2 root  wheel   120176  4 May 11:09 reboot
-r-xr-xr-x   1 root  wheel   169904  4 May 11:09 route
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha1
-rwxr-xr-x   4 root  wheel   136560  4 May 11:09 sha1sum
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha224
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha224sum
-rwxr-xr-x   4 root  wheel   136560  4 May 11:09 sha256
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha256sum
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha384
-rwxr-xr-x   4 root  wheel   136560  4 May 11:09 sha384sum
-rwxr-xr-x   8 root  wheel   136560  4 May 11:09 sha512
-rwxr-xr-x   4 root  wheel   136560  4 May 11:09 sha512sum
-rwxr-xr-x   1 root  wheel   137536  4 May 11:09 shutdown
-r-xr-xr-x   1 root  wheel   119472  4 May 11:09 umount
```

- `/opt:` Optional add-on applications (Not part of OS apps)

```sh
ls -la
total 0
drwxr-xr-x   3 root         wheel    96 17 Jul  2024 .
drwxr-xr-x  22 root         wheel   704  4 May 11:09 ..
drwxr-xr-x  33 rajeevsingh  admin  1056 20 Feb 09:52 homebrew
```

- `/proc:` Running processes(Only exist in memory)
- `/lib or /usr/lib or /library:` C programs library files needed by commands and appps.

```sh
/Library
╰─ ls -la
total 0
drwxr-xr-x  68 root       wheel            2176  1 Jun 17:53 .
drwxr-xr-x  22 root       wheel             704  4 May 11:09 ..
-rw-r--r--   1 root       wheel               0  4 May 11:09 .localized
drwxr-xr-x@  5 root       wheel             160  1 Jun 17:53 Apple
drwxr-xr-x  20 root       admin             640  1 Jun 17:53 Application Support
drwxrwxrwx   2 _appstore  staff              64  4 May 11:09 AppStore
drwxr-xr-x  10 root       wheel             320  1 Jun 17:53 Audio
drwxr-xr-x   9 root       wheel             288 11 Apr  2023 Bluetooth
drwxrwxrwt   9 root       admin             288  1 Jun 17:54 Caches
drwxr-xr-x   3 root       wheel              96 25 Jul  2023 Catacomb
drwxr-xr-x   2 root       wheel              64  4 May 11:09 ColorPickers
drwxr-xr-x   3 root       wheel              96  4 May 11:09 ColorSync
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Components
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Compositions
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Contextual Menu Items
drwxrwx---@  3 root       _analyticsusers    96  8 Jun 14:44 CoreAnalytics
drwxr-xr-x   3 root       wheel              96  4 May 11:09 CoreMediaIO
drwxr-xr-x   3 root       wheel              96 23 Feb  2024 Developer
drwxr-xr-x   3 root       wheel              96  4 May 11:09 DirectoryServices
drwxr-xr-x   5 root       wheel             160  4 May 11:09 Documentation
drwxr-xr-x   2 root       wheel              64  4 May 11:09 DriverExtensions
drwxr-xr-x   5 root       wheel             160  1 Jun 17:53 Extensions
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Filesystems
drwxrwxr-t   3 root       admin              96  4 May 11:09 Fonts
drwxr-xr-x   9 root       wheel             288  1 Jun 17:53 Frameworks
drwxr-xr-x   4 root       wheel             128  1 Jun 17:53 Google
drwxr-xr-x@  2 root       wheel              64  4 May 11:09 GPUBundles
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Graphics
drwxr-xr-x   7 root       wheel             224  1 Jun 17:53 Image Capture
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Input Methods
drwxr-xr-x   4 root       wheel             128  1 Jun 17:53 InstallerSandboxes
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Internet Plug-Ins
drwxr-xr-x   4 root       wheel             128  4 May 11:09 Java
drwxr-xr-x@  3 root       wheel              96  4 May 11:09 KernelCollections
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Keyboard Layouts
drwxr-xr-x   9 root       wheel             288  9 Jun 16:51 Keychains
drwxr-xr-x   9 root       wheel             288  1 Jun 17:53 LaunchAgents
drwxr-xr-x  13 root       wheel             416  4 Jun 10:34 LaunchDaemons
drwxr-xr-x  10 root       wheel             320  1 Jun 19:26 Logs
drwxr-xr-x   3 root       wheel              96 23 Sep  2023 Microsoft
drwxr-xr-x   5 root       wheel             160  4 May 11:09 OpenDirectory
drwxrwx---   4 root       _analyticsusers   128 18 Aug  2023 OSAnalytics
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Perl
drwxr-xr-x   2 root       wheel              64  4 May 11:09 PreferencePanes
drwxr-xr-x  59 root       wheel            1888  9 Jun 17:38 Preferences
dr-xr-xr-x   6 root       wheel             192  9 Jun 09:04 Printers
drwxr-xr-t   7 root       wheel             224 28 May 14:18 PrivilegedHelperTools
drwxr-xr-x   2 root       wheel              64  4 May 11:09 QuickLook
drwxrwxr-x   4 root       admin             128  5 Jun 14:48 Receipts
drwxr-xr-x   4 root       wheel             128  4 May 11:09 Ruby
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Sandbox
drwxr-xr-x   2 root       wheel              64  4 May 11:09 Screen Savers
drwxr-xr-x   2 root       wheel              64  4 May 11:09 ScriptingAdditions
drwxr-xr-x   9 root       wheel             288  4 May 11:09 Scripts
drwxr-xr-x   4 root       wheel             128  4 May 11:09 Security
drwxr-xr-x   3 root       wheel              96  4 May 11:09 Speech
drwxr-xr-x@  2 root       wheel              64  4 May 11:09 StagedDriverExtensions
drwxr-xr-x@  2 root       wheel              64  4 May 11:09 StagedExtensions
drwxr-xr-x   2 root       wheel              64  4 May 11:09 StartupItems
drwxr-xr-x   3 root       wheel              96  9 Jun 01:16 SystemExtensions
drwxr-xr-x   4 root       wheel             128  4 May 11:09 SystemMigration
drwxr-xr-x   2 root       wheel              64  4 May 11:09 SystemProfiler
drwxr-xr-x@  5 root       wheel             160  2 Dec  2023 Trial
drwxr-xr-x@  6 root       wheel             192  5 Jun 14:48 Updates
drwxr-xr-x   8 root       wheel             256  4 May 11:09 User Pictures
drwxr-xr-x  44 root       wheel            1408  4 May 11:09 User Template
drwxr-xr-x   4 root       wheel             128  4 May 11:09 Video
drwxr-xr-x   5 root       wheel             160  4 May 11:09 WebServer
```

- `/tmp:` Directory for temporary files.

```sh
ls -la
total 0
drwxrwxrwt  4 root         wheel  128  9 Jun 14:04 .
drwxr-xr-x  6 root         wheel  192  1 Jun 17:53 ..
drwx------  3 rajeevsingh  wheel   96  1 Jun 17:53 com.apple.launchd.eC43qZbLnL
drwxr-xr-x  2 root         wheel   64  8 Jun 15:58 powerlog
```

- `/home:` Directory for user.

```sh
/home
╰─ ls -la
total 2
dr-xr-xr-x   2 root  wheel    1  1 Jun 17:53 .
drwxr-xr-x@ 20 root  wheel  640  1 Jun 17:53 ..
```

- `/var:` System Logs.

```sh
/var
╰─ ls -la
total 0
drwxr-xr-x   35 root          wheel         1120  1 Jun 17:53 .
drwxr-xr-x    6 root          wheel          192  1 Jun 17:53 ..
drwx------    2 root          wheel           64  4 May 11:09 agentx
drwxr-xr-x    8 daemon        wheel          256  4 May 11:09 at
drwx------  180 root          wheel         5760  1 Jun 17:53 audit
drwx------    2 root          wheel           64  4 May 11:09 backups
drwxr-xr-x    3 root          wheel           96 24 Jul  2024 containers
drwxr-xr-x  128 root          wheel         4096  5 Jun 14:48 db
drwxr-xr-x    2 _driverkit    _driverkit      64  4 May 11:09 dextcores
drwx------    2 root          wheel           64  1 Jun 17:54 dirs_cleaner
drwxr-xr-x    2 root          sys             64  4 May 11:09 empty
drwxr-xr-x    6 root          wheel          192  1 Jun 17:53 folders
drwx------    2 root          wheel           64  1 Jun 17:53 install
drwxr-x---    2 _jabber       _jabber         64  4 May 11:09 jabberd
drwxr-xr-x    3 root          wheel           96  4 May 11:09 lib
drwxr-xr-x   42 root          wheel         1344  9 Jun 15:41 log
drwxr-xr-x    8 root          wheel          256 19 Feb 02:59 logs
drwxr-x---    2 _mobileasset  _mobileasset    64  4 May 11:09 ma
drwxrwxr-x    2 root          mail            64  4 May 11:09 mail
drwxr-xr-x    3 root          wheel           96 11 Apr  2023 MobileSoftwareUpdate
drwxr-xr-x    3 root          wheel           96  4 May 11:09 msgs
drwxr-xr-x    2 root          wheel           64  4 May 11:09 netboot
drwxr-xr-x    4 _networkd     _networkd      128  1 Jun 17:53 networkd
drwxrwxrwx    3 root          admin           96  4 May 11:09 OOPJit
drwxr-xr-x    4 root          wheel          128 11 Apr  2023 personalized_factory
drwxr-xr-x    5 root          wheel          160  1 Jun 17:53 protected
drwxr-x---   10 root          wheel          320 16 Dec 10:07 root
drwxr-xr-x    4 root          wheel          128  4 May 11:09 rpc
drwxrwxr-x   38 root          daemon        1216  9 Jun 16:09 run
drwxr-xr-x    4 root          wheel          128  1 Jun 17:53 select
drwxrwxr-x    3 _sntpd        _sntpd          96  1 Jun 17:53 sntpd
drwxr-xr-x    6 root          wheel          192  4 May 11:09 spool
drwxrwxrwt    7 root          wheel          224  9 Jun 17:11 tmp
drwxr-xr-x    3 root          wheel           96  1 Jun 17:53 vm
drwxr-xr-x    3 root          wheel           96  4 May 11:09 yp
```

- `/run:` system daemons that start very early(e.g. systemd and udev) to store temporary runtime files like PID files.
- `/mnt:` to mount external filesystem(e.g. NFS)
- `/media:` For cdrom mounts.
