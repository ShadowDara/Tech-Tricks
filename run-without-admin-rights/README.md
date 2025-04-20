# run-without-admin-rights
run .exe file and ignore the admin rights!

## How to

*pls consider this does not work for every programm, for example it is working for **steam.***

1. create a new text file and paste *(or download the `.bat` file)*:
```bat
set __COMPAT_LAYER=RunAsInvoker
start file.exe
```
2. change "`file.exe`" in the `.bat` file to the name your `.exe` file *(in the preview `.bat` file it is the steam setup)*
3. These 2 files must be in the same folder
4. safe the textfile with `.bat` as file extension
5. double click to run the `.bat` file

## Other

*LICENSE* : None

**would be cool to give credit when you copy and republish this but is not required.**

*Feel free to contribute via Issues (although Ideas) and forks / Pull Requests.*
