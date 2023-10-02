# Useful UNIX Commands

## MVP
- `man <command_name>` -> Open manual for any command

## File permissions
- `ls -al` -> list all files including dot files
    - `-rwxr---` -> 10 lettered string file permissions
        - `-` -> indicates permission is not granted
        - `r/w/x` denotes `read/write/execute` permissions
- `chmod +rwx <file/dir>` -> grants read, write and execute permissions to user and group
    - `chmod u+[r/w/x]` grant any one or all 3 of [w/x/r] -> write, execute, read to `user/owner` of file.
    - `chmpd g+[r/w/x]` -> group
- `chmod -rwx <file/dir>` -> remove write, execute and read permissions.

### Permission Levels

|Integer|Binary | Permission    |
| ----- | ----- | ------------- |
|   0   | 000   |       ---     |
|   1   | 001   |       --x     |
|   2   | 002   |       -w-     |
|   3   | 003   |       -wx     |
|   4   | 004   |       r--     |
|   5   | 005   |       r-x     |
|   6   | 006   |       rw-     |
|   7   | 007   |       rwx     |
---------------------------------

- `chmod 777 mydir/` -> grants read write and execute permissions to user, group and others
- `umask 777 mydir/` -> masks/removes all permissions to all users.

## Other Useful Commands
- `grep -A/B/C <n> <pattern>` -> Displays `<n>` -> number of lines after the first match for pattern
    - `cat myfile.txt | grep -A 5 'ashu'` -> displays 5 lines after ashu is found
    - `cat myfile.txt | grep -B 5 'ashu'` -> displays 5 lines before ashu is found
    - `cat myfile.txt | grep -C 5 'ashu'` -> displays 5 lines before and after ashu is found

- `du -hs` -> Display size of all files and folders inside current directory. 
    - `-h` flag denotes human readable form
- `sort` -> sorts lines of text files

