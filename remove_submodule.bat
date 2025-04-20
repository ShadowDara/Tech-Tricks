@echo off
setlocal enabledelayedexpansion

set /p SUBMODULE_PATH=Please enter the submodule Path:

git submodule deinit -f "%SUBMODULE_PATH%"

rmdir /s /q ".git\modules\%SUBMODULE_PATH%"

rmdir /s /q "%SUBMODULE_PATH%"

if exist ".gitmodules" (
    notepad .gitmodules
)

pause

git rm --cached "%SUBMODULE_PATH%"

git add .gitmodules
git commit -m "Removing submodule: %SUBMODULE_PATH%"

pause
