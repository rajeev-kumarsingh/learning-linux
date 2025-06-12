# Access Control List

- Now since we are on the topic of assigning permission to files and directories and changing groups and ownership, we have to look into Access Control List as well. Access Control List is another layer, or I would say a top layer or additional layer that runs on top of your permissions which allows you to assign permission per user.

## Q. what is ACL?

A. provides an additional more flexible permission mechanism for file systems. It is designed to assist with UNIX file permissions. ACL allows you to give permission for any user or group to any disc resources.

## Q. Use of ACL?

A. Think of a scenario in which a particular user is not a member of a group created by you. So, let's say if you create a user A, B, C, and it's not member of the group route, but you still want to give some read or write access. How can you do it without making the user member of the group? And that's where we have Access Control List which will help us do it.

So, let me put it in a very simple words one more time.

So, let's say if you wanted to allow a file that is created by root and allow that user to read that file. Now, that user is a regular user, not part of the group root, and you want that user to read that file. So of course the one way to do it is you change the read permission of others, the last three bits, so others can read it, but then all everyone else could read that. But, we only want one user to read that instead of all other users to read it. That is why we only give permission to that particular user using ACL.

Hope that clarifies. So basically, ACLs are used to make a flexible permission mechanism in Linux.
From Linux man pages ACLs are used to define more fine-grain discretionary access rights for files and directories.

- The commands to assign and remove ACL permissions are `setfacl` and `getfacl`.
- So, set file ACL, get file ACL. Get file ACL will give you the information about the existing permissions of a file. And set will allow you to set the way you want it to set.

- Let's look at a few examples.

  Here are the list of commands for setting up ACLs.To add permission for a user, you have to run a command set file ACL (`setfacl`) with `minus` `m` option to modify U for user, and then you have to separate it with the colons where user is a your user name. In my case it will be rajeev. And then column and the permission that you wanted to give that user to. And then of course, the last part is the file name.Which file do you want to give the permission to?Make sure you specify the complete absolute path.To add permission for a group, you could also allow the permission to a specific group.

  `setfacl -m u:user:rwx /path/to/file`
  `setfacl -m u:rajeev:rwx /Users/rajeevsingh/documents/Devops`

  # Understanding Absolute vs Relative Path and `setfacl` Command

---

## 📁 Absolute vs Relative Path

### ✅ Absolute Path

- A complete path from the root of the filesystem.
- Does **not depend** on your current directory.

#### 🔹 Examples:

- Linux/macOS: `/home/rajeev/Documents/resume.pdf`
- Windows: `C:\Users\Rajeev\Documents\resume.pdf`

### ✅ Relative Path

- A path that is **relative to the current working directory**.
- Useful for local navigation.

#### 🔹 Examples:

If you are in `/home/rajeev`, then:

- Relative: `Documents/resume.pdf`
- Equivalent Absolute: `/home/rajeev/Documents/resume.pdf`

---

## 🔁 Summary Table

| Feature            | Absolute Path             | Relative Path     |
| ------------------ | ------------------------- | ----------------- |
| Starts from        | Root (`/` or `C:\`)       | Current directory |
| Context dependent? | No                        | Yes               |
| Use case           | Full file access, scripts | Local navigation  |

---

## 🧭 Special Path Symbols in Linux/Unix

- `.` → current directory
- `..` → parent directory

#### Example:

```bash
cd ../Documents
```

---

## 🔐 Using `setfacl` to Set ACLs

### ✅ Command Example

```bash
setfacl -m u:rajeev:rwx /Users/rajeevsingh/documents/Devops
```

### 🔍 Breakdown

| Part                                  | Description                                             |
| ------------------------------------- | ------------------------------------------------------- |
| `setfacl`                             | Command to set Access Control Lists (ACLs)              |
| `-m`                                  | Modify an ACL                                           |
| `u:rajeev:rwx`                        | Give user `rajeev` Read, Write, and Execute permissions |
| `/Users/rajeevsingh/documents/Devops` | Target directory to which the ACL is applied            |

---

## ✅ Validity Conditions

- User `rajeev` must exist.
- Directory `/Users/rajeevsingh/documents/Devops` must exist.
- ACL support must be enabled on the filesystem.
- Use `sudo` if needed:

```bash
sudo setfacl -m u:rajeev:rwx /Users/rajeevsingh/documents/Devops
```

---

## 🧪 Verify ACL

```bash
getfacl /Users/rajeevsingh/documents/Devops
```

---

## ⚠️ macOS Users

- macOS uses a different ACL system.
- Use:

```bash
ls -le
```

- Modify basic permissions using:

```bash
chmod +x filename
```

---

## 🧹 Remove ACL

```bash
setfacl -x u:rajeev /Users/rajeevsingh/documents/Devops
```

---

## ✅ Summary

- **Absolute Path**: Full path from root.
- **Relative Path**: Path from the current directory.
- **setfacl**: Advanced permission control on files/directories.

## To add permission for a group,

you could also allow the permission to a specific group. So again, if you give permission, let's say to read permission to the group,the middle three bits, then every group in your Linux system can read it. But what if you only want one group to read it, right? That could be a problem. So then again, Access Control List comes to the rescue. And to add that group to allow it to read or write that specific file, you have to set with `G` and `group name` and the `permissions`.

To allow all files or directories to inherit ACL entries from the directory, it is within meaning cascading, which will be set with minus dm option and then entry whatever that you wanna put in and the name of the file or directory. because you want it to cascade. A file cannot have a file within itself, so that's why directory would have to have that. To remove a specific entry, you will have to do setfacl with minus X to remove it, and then you will have to specify the user and the name of the file. This is only for a specific user.

`setfacl -Rm "entry" /path/to/directory`

## To remove specific entry

`setfacl -x u:user /path/to/file` (For a specific user)

## To remove all entries

`setfacl -b /path/to./file` (For all users)

### Note

- As you assign the ACL permission to a file/directory it adds `+` sign at the end of the permission.
- Setting `w` permission with ACL doen not allow to remove a file.
