# Day-10: Tasks

1. 3. User Management

- [ ] Users and Groups
- [ ] Managing Permissions
- [ ] Create / Delete / Update

---

# What three things must you do to manage user accounts?

- Create Accounts
- Modify Accounts
- Delete Accounts

---

## Use the `useradd` command to create accounts:

```bash
sudo useradd mile
```

- ## That's enough to create the account. However, there are some options you can add. As always, review the associated man page for details. Here are a few common options:
  - `--create-home` (`-m`): Adds a home directory (this is a default on some distributions)
  - `--shell` (`-s`): Sets the user's preferred shell if it's different from `/bin/bash`
  - `--uid` (`-u`): Specifies a particular user ID (`UID`)
  - `--comment` (`-c`): Populates the comment field (usually with the user's full name enclosed in quotes)
    > `Note`: Settings for the useradd command are stored in the /etc/defaults/useradd file.
- Also, don't forget to set a password for the account by using the `passwd` command.

### Try a few exercises to test these commands:

1. Create a user named **test1** with a home directory named `/home/salesuser`.
2. Create a user named **test2** with `zsh` as the default shell.
3. Create a user named **test3** with "**Temp User**" in the comment field.

> `Note`: These commands require root or administrative privileges, so use the sudo before each command.
