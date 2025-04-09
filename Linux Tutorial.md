Linux is a widely-used open-source operating system, similar to Windows, Mac, and Android.
Basic Linux Commands
## Commands Overview  

| Command | Description | Example |
|---------|-------------|---------|
| `ls` | Lists files and directories | `ls` |
| `cd` | Changes the current directory | `cd /home/user/Documents` |
| `pwd` | Displays the current directory path | `pwd` |
| `mkdir` | Creates a new directory | `mkdir new_directory` |
| `rm` | Removes files or directories | `rm file.txt` |
| `cp` | Copies files or directories | `cp file1.txt file2.txt` |
| `mv` | Moves or renames files and directories | `mv old_name new_name` |
| `touch` | Creates an empty file or updates file timestamps | `touch newfile.txt` |
| `rmdir` | Removes an empty directory | `rmdir empty_directory` |

---

## Examples  

### Listing Files in a Directory  

```bash
ls
```

# Common `ls` Options  

| Command   | Description |
|-----------|------------|
| `ls -l`   | List files in long format (detailed view). |
| `ls -a`   | Show hidden files (files starting with `.`). |
| `ls -lh`  | Show file sizes in human-readable format (e.g., KB, MB). |
| `ls -lt`  | Sort files by modification time (newest first). |
| `ls -lr`  | Reverse the sorting order. |
| `ls -R`   | List files recursively (including subdirectories). |
| `ls -i`   | Show the inode number of files. |
 

Displays the current directory path 

```bash
pwd 
```

Navigating Directories with cd 
To move into a directory: 
```bash  
cd directory_name 
``` 
> [!NOTE]
> /mnt	It contains temporary mount directories for mounting the file system. 

Go to the Home Directory: 

```bash 

# “~” your home directory 

cd ~ 

#or simply 

cd 

``` 

Go Up One Level (Parent Directory) 

```bash 

cd .. 

``` 

Create a new directory: 

```bash  

mkdir new_directory 

``` 

 

Copying Files and Directories with cp: 

```bash 

cp [options] source destination 

``` 
> [!NOTE]
> - source → The file or directory you want to copy. 
> - destination → The location where the file or directory will be copied. 

 

Copy a File 

```bash  

cp file.txt /home/user/Documents/ 

``` 

Copies file.txt to the Documents directory. 

Copy a File and Rename It 

``` bash 

cp file.txt newfile.txt 
``` 

Creates a copy named newfile.txt in the same directory. 

Copy a Directory (-r or -R for recursive copy) 

``` bash 

cp -r my_folder /home/user/Backup/ 
``` 

Copies my_folder and all its contents to the Backup directory. 

 

Moving files and Directories: 

```bash 

mv [options] source destination 

``` 
> [!NOTE]
> - source → The file or directory you want to move. 
> - destination → The new location or new name for the file/directory. 

Move a File to Another Directory 

```bash 

mv file.txt /home/user/Documents/ 
``` 

Moves file.txt into the Documents directory. 

Move a Directory 

``` bash 

mv my_folder /home/user/Documents/ 

``` 
Remove a file:

``` bash

rm file.txt

```

## Text Processing Commands in Linux

| Command | Description | Example |
|---------|-------------|---------|
| `cat` | Displays the contents of a file | `cat file.txt` |
