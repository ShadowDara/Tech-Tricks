:: script written by Shadowdara

:: to read all saved SSID

@echo off

setlocal EnableDelayedExpansion

for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr "Profil"') do (
    set "profilename=%%A"
    set "profilename=!profilename:~1!"

    echo -----------------------------
    echo Profil: !profilename!
    netsh wlan show profile name="!profilename!" key=clear | findstr "Schlüsselinhalt"
)
echo -----------------------------

pause
