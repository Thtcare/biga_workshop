# Dataset
You can download datasets from https://chulabhornroyalacademy-my.sharepoint.com/:f:/g/personal/auripan_por_cra_ac_th/EmFxuK7RKzZJh1-PIgvgtlYBpEHfQlKcuzOXE3kMCFMxRg?e=3pvAwV

---

# What is Linux? 

Linux is an open-source operating system, similar to Windows and macOS. It is widely used in various devices, from smartphones and computers to servers and supercomputers. The Linux OS consists of key components such as the kernel (core system), bootloader, init system, daemons, graphical server, desktop environment, and applications. 

One of Linux's main advantages is its reliability, security, and cost-effectiveness, as it is free to use and modify. It also offers flexibility, with various distributions (distros) available, such as Ubuntu, Debian, Fedora, and CentOS, catering to different needs. Due to its stability and security, Linux is commonly used in enterprise environments, web servers, and cloud computing. 

---
# How Linux Relates to Bioinformaticians?
- Most bioinformatics software (e.g., bwa, samtools, STAR, GATK) is built to run on Linux-based systems.

- Pipelines and workflows in genomics, transcriptomics, or proteomics are usually developed and executed on Linux servers or HPC clusters.

- Efficiently manages large genomic files (FASTQ, BAM, VCF) with command-line tools, supporting high-speed operations like sorting, filtering, and mapping.

# Linux shell
- Shell: A program that interprets and executes user commands, serving as an interface between the user   and the operating system.
   Eg. bash, sh, ksh, tcsh, zsh, etc

- Terminal: A program that run a shell 
   (‘command line’ in window) 

- Directory: Folder or location of file

---

# Remote Access Using SSH
ssh: Opens SSH client (remote login program)
Example:
```bash
ssh user@example.com
```
```bash
ssh biga@10.208.103.12
```
<img src="https://github.com/user-attachments/assets/176e4279-231f-48c1-9671-c9d577463997" alt="Image" width="300"/>

---

# Basic Linux Commands
## Commands Overview  

| Command | Description | Example |
|---------|-------------|---------|
| `ls` | Lists files and directories | `ls` |
| `cd` | Changes the current directory | `cd /home/user/Documents` |
| `pwd` | Displays the current directory path | `pwd` |
| `mkdir` | Creates a new directory | `mkdir new_directory` |
| `rm` | Removes files or directories | `rm file.txt` |
| `cp` | Copies files or directories | `cp file.txt /home/user/Documents/ ` |
| `mv` | Moves or renames files and directories | `mv old_name new_name` |
| `touch` | Creates an empty file or updates file timestamps | `touch newfile.txt` |
| `rmdir` | Removes an empty directory | `rmdir empty_directory` |

---

## Examples  

**Listing Files in a Directory:**

```bash
ls
```
Output:

<img src="https://github.com/user-attachments/assets/c618490c-2414-4f4b-910f-a26762e7d78c" alt="Image" width="300"/>

### Common `ls` Options  

| Command   | Description |
|-----------|------------|
| `ls -l`   | List files in long format (detailed view). |
| `ls -a`   | Show hidden files (files starting with `.`). |
| `ls -lh`  | Show file sizes in human-readable format (e.g., KB, MB). |
| `ls -lt`  | Sort files by modification time (newest first). |
| `ls -lr`  | Reverse the sorting order. |
| `ls -R`   | List files recursively (including subdirectories). |
| `ls -i`   | Show the inode number of files. |
 

**Displays the current directory path:**

```bash
pwd 
```

**Navigating Directories with cd:** 
  - To move into a directory 
  ```bash  
  cd directory_name 
  ```
Output:

<img src="https://github.com/user-attachments/assets/2c3c2538-c43b-4763-9013-014b869bc45f" alt="Image" width="800"/>

> [!NOTE]
> /mnt	It contains temporary mount directories for mounting the file system. 

  - Go to the Home Directory 
   ```bash 
   # “~” your home directory 
   cd ~ 
   #or simply 
   cd 
   ``` 

  - Go Up One Level (Parent Directory) 
  ```bash 
  cd .. 
  ``` 

**Create a new directory:**
  ```bash  
  mkdir new_directory 
  ```

Output:

<img src="https://github.com/user-attachments/assets/bfefbf20-e9e4-4d07-a9bf-e459dd80e3b5" alt="Image" width="500"/>


**Copying Files and Directories with cp:** 
```bash 
cp [options] source destination 
``` 
> [!NOTE]
> - source → The file or directory you want to copy. 
> - destination → The location where the file or directory will be copied. 

Output:

<img src="https://github.com/user-attachments/assets/b3f167e9-e02d-44b0-bbbd-210a7346d30c" alt="Image" width="700"/>

  - Copy a File 
  ```bash  
  cp file.txt /home/user/Documents/ 
  ``` 
Copies file.txt to the Documents directory. 

  - Copy a File and Rename It 
  ``` bash 
  cp file.txt newfile.txt 
  ``` 
Creates a copy named newfile.txt in the same directory. 

 - Copy a Directory (-r or -R for recursive copy) 
``` bash
cp -r my_folder /home/user/Backup/ 
``` 
Copies my_folder and all its contents to the Backup directory. 

**Moving files and Directories:**
```bash 
mv [options] source destination 
``` 
> [!NOTE]
> - source → The file or directory you want to move. 
> - destination → The new location or new name for the file/directory. 

 - Move a File to Another Directory 
```bash 
mv file.txt /home/user/Documents/ 
``` 
Moves file.txt into the Documents directory. 

 - Move a Directory 
``` bash 
mv my_folder /home/user/Documents/ 
```

Output:

<img src="https://github.com/user-attachments/assets/efd69ca7-7833-44d2-a2d3-40383ff71d2d" alt="Image" width="700"/>

**Remove a file:**
``` bash
rm file.txt
```

Output:

<img src="https://github.com/user-attachments/assets/c03a5031-96f6-4bed-8384-177a9f8afcf3" alt="Image" width="550"/>

---

## Text Processing Commands in Linux

| Command | Description | Example |
|---------|-------------|---------|
| `cat` | Displays the contents of a file | `cat file.txt` |
| `grep` | Searches for a pattern in a file | `grep"error"log.txt` |
| `sort` | Sorts the contents of a file | `sort file.txt` |
| `head` | Displays the first few lines of a file | `head file.txt` |
| `tail` | Displays the last few lines of a file | `tail file.txt` |
| `less` | Reads and searches content within a file | `less file.txt` |
| `wc` | Counts the lines, words, and characters in a file | `wc file.txt` |

---

## Examples:

**Display the contents of a file:**
```bash
cat file.txt
```

Output:

<img src="https://github.com/user-attachments/assets/2aa391bd-a7c8-483d-b098-e4911e8bf717" alt="Image" width="550"/>

**Search for a pattern in a file:**
```bash
grep "error" file.txt
```
Output:

<img src="https://github.com/user-attachments/assets/91a30e59-c3af-4cf0-afc4-6d3312d431b9" alt="Image" width="700"/>

<img src="https://github.com/user-attachments/assets/aebf5d2e-ff98-4d5a-aec7-3d2660d740cd" alt="Image" width="700"/>


**Sort the contents of a file:**
```bash
sort file.txt
```

**Display the first 10 lines of a file:**
```bash
head file.txt
head -n 5 file.txt
Shows the first 5 lines of file.txt
```

**Display the last 10 lines of a file:**

```bash
tail file.txt
```

## Networking Shell Commands

| Command | Description | Example |
|---------|-------------|---------|
| `ping` | Checks the network connection to a server | `ping example.com` |
| `wget` | Retrieves files from the web | `wget http://example.com/file.zip` |
| `curl` | Transfers data from or to a server | `curl http://example.com` |
| `ssh` | Opens SSH client (remote login program) | `ssh user@example.com` |
| `scp` | Securely copies files between hosts | `scp file.txt user@example.com:/path/` |

---

## Examples:

**Checks the network connection to a server:**

- Command: `ping`

- Example: `ping example.com`

**Retrieves files from the web:**

- Command: `wget`

- Example: `wget http://example.com/file.zip`

**Transfer data from or to a server:**

- Command: `curl`

- Example: `curl http://example.com`

**Open SSH client (remote login program):**

- Command: `ssh`

- Example: `ssh user@example.com`

**Securely copy files between hosts:**

- Command: `scp`

- Example: `scp file.txt user@example.com:/path/`

**Transfer files using the File Transfer Protocol:**

- Command: `ftp`

- Example: `ftp ftp.example.com`

**File Permissions and Ownership Commands**

| Command | Description | Example |
|---------|-------------|---------|
| `chmod` | Changes file permissions | `chmod 755 file.txt` |
| `chown` | Changes file owner and group | `chown user:group file.txt` |
| `chgrp` | Changes file group ownership | `chgrp group file.txt` |

---

## Examples:

**Change permissions of a file:**
```bash
chmod 755 file.txt
```

**Change the owner of a file:**
```bash
chown user:group file.txt
```

## System Monitoring and Process Management Commands

| Command | Description | Example |
|---------|-------------|---------|
| `top` | Displays real-time system infformation (CPU, memory) | `top` |
| `ps` | Displays the list of running processes | `ps aux` |
| `kill` | Terminates a process by its ID | `kill 1234` |
| `df` | Displays disk space usage | `df -h` |

----

## Examples:

**View running processes:**
```bash
ps aux
```

**Display real-time system statistics:**
```bash
Top
```

**Kill a process by its ID:**
```bash
kill 1234
```

**Check disk space usage:**
```bash
df -h
```


## Advanced Shell Commands 

| Command | Description | Example |
|---------|-------------|---------|
| `find` | Searches for files and directions | `find /home/user -name "*.txt"` |
| `tar` | Archives files into a tarball (.tar) or extracts them | `tar -cvf archive.tar file1.txt file2.txt` |
| `ssh` | Connects to a remote machine via SSH | `ssh user@remote_host` |

---

## Examples:

**Find files in a directory:**
```bash
find /home/user -name "*.txt"
```

**Create a tarball archive:**
```bash
tar -cvf archive.tar file1.txt file2.txt
```

**Connect to a remote machine using SSH:**
```bash
ssh user@remote_host
```

## Using Shell Command Piping 
You can combine multiple commands by piping their output. In short, it allows the output of one command to be used as the input for another command. 

## Examples:

**View the top 10 processes:**
```bash
ps aux | head -n 10
```

**Search and sort a log file:**
```bash
grep "error" log.txt | sort
```

### Conclusion
Mastering the basic shell commands in Linuxis among the essential things to know so that you can perform a seamless system navigation, learn how to manage files efficiently, and perform other operations. By learning these commands, you can easily enhance your Linux skills and get a better insight over the system.

---

**References**

https://www.linux.com/what-is-linux/

