@echo off
setlocal

if not exist ".gitmodules" (
    echo Creating .gitmodules file...
    type nul > .gitmodules
    git add .gitmodules
    git commit -m "Added empty .gitmodules file"
) else (
    echo .gitmodules file already exists.
)

pause
