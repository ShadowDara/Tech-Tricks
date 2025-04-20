@echo off
setlocal enabledelayedexpansion

echo Updating git submodules...

git submodule init
git submodule update --remote --merge

git add .
git commit -m "Updated submodules to latest commits" || echo No changes to commit.

pause
