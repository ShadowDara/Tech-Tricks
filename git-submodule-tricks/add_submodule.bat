@echo off
setlocal enabledelayedexpansion

set /p SUBMODULE_PATH=Please enter the submodule path (e.g. libs/mylib):
set /p SUBMODULE_URL=Please enter the submodule URL (e.g. https://github.com/user/repo.git):

git submodule add %SUBMODULE_URL% %SUBMODULE_PATH%

git submodule init
git submodule update

if exist ".gitmodules" (
    notepad .gitmodules
)

git add .gitmodules
git add %SUBMODULE_PATH%
git commit -m "Added submodule: %SUBMODULE_PATH%"

pause
