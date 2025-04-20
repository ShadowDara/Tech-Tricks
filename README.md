# 🖥️ Tech-Tricks

This is a collection Repository for useful Tricks and Tech Stuff!

## Content-Index

### [Batch]()
- [Git Submodule Tricks](git-submodule-tricks/README.md)
- [read wlan password](read-wlan-password/README.md)
- [run without Admin rights](run-without-admin-rights/README.md)

### [Powershell]()
- [change-file-edittime](change-file-extension/README.md)
- [change-file-extension](change-file-extension/README.md)
- [create-envirment-variables](create-envirment-variables/README.md)
- [show-envirment-vars](show-envirment-vars/README.md)

---

## OLD Stuff

*i am restructering this repository, this will take some time. Please be patient!*

- **Pls be patient with my Trash**
- to be honest i dont now how to write such a file, so good luck with my mess!
- maybe look in the Table of Content to find what you want!
- **feel free to fork this Repository!**
- [License](https://github.com/ShadowDara/Tech-Tricks/edit/main/README.md)

# Windows

## Batch

- all bash commands are only working on windows!

### Hack Effect

This makes a cool hacker looking effect in the cmd Terminal

1. make a new file and paste
```bat
@echo off
color 0A
:start
echo %random% %random% %random% %random%
goto start
```
2. save the file as somthing`.bat` *(only the file extension is important)*
3. run the file

Press `CTRL + C` or close the terminal to end this effect

---

### Terminal Loop

1. make a new file and paste
```bat
:loopstart
start
goto loopstart
```
2. save the file as somthing`.bat` *(only the file extension is important)*
3. run the file
4. DONT DO STEP 3, YOUR COMPUTER WONT LIKE THIS!

---

### Robocopy

This is a copying file, because sometimes the windows explorer hates me and i hate him too!

- copy this in a new batch file

```bat
@echo off
set SOURCE="C:\Pfad\zum\Quellordner" REM This is the Source Folder Path
set DEST="D:\BackupOrdner" REM This is Destination Folder Path
set LOGFILE="C:\Pfad\zum\Log\robocopy_log.txt" REM This is the Path for a Logfile

robocopy %SOURCE% %DEST% /E /COPY:DAT /LOG:%LOGFILE% /TEE /NP

echo Backup abgeschlossen!
pause
```

---

## Powershell

- you need a powershell terminal installed for this! *(but on the windows it is usally installed)*

### Change Edit Time

With this file you can easily change the edit- and creation time of all particular files in a folder.

```powershell
# This is the Folderlocation, PLEASE CHANGE!!!
$ordner = "C:\Pfad\zum\Ordner"

# THIS IS THE NEW DATE, PLEASE CHANGE AND IT MUST BE IN THE SAME FORMAT!!!
$neuesDatum = Get-Date "2024-03-06 12:34:56"

# Changing every file in the particular folder
# If you although want include subfolders, add " -File -Recurse " to line 9 (this is line 8)
$files = Get-ChildItem -Path $ordner -File

# Changing every Date
foreach ($file in $files) {
    $file.CreationTime = $neuesDatum
    $file.LastWriteTime = $neuesDatum
    Write-Host "Geändert: $($file.Name) -> $neuesDatum"
}

Write-Host "All Files are updated!"
```
- safe this file as a `.ps1` file

---

## Autorun for USB-Devices

This a code configgering USB-Sticks and running programms automatically with them

```inf
[autorun]
icon=Dara.ico
label="117GB"
open=start.bat
```

**Explanation**
- `icon` defines the used icon for the device in the explorer
- `label` is the used name of the device
- `open` is used to open a file, for example a `.bat` file

---

# LICENSE

- feel free to use the tipps for whatever you want but give credits
when you republish then!
- [LICENSE file](https://github.com/ShadowDara/Tech-Tricks/blob/main/LICENSE)
