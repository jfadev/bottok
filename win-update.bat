@echo off
echo Bot Tok Update

echo Latest versions:
git tag --sort=taggerdate

:: Check if Node.js is installed
where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Installing Node.js...
    :: Download Node.js installer from official website
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://nodejs.org/dist/v18.12.1/node-v18.12.1-x64.msi', 'node-installer.msi')"
    :: Install Node.js silently
    msiexec /i node-installer.msi /quiet
    :: Clean up installer file
    del node-installer.msi
) else (
    echo Node.js is already installed
    node --version
)

:: Check if npm is installed
where npm >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Installing npm...
    :: Download npm installer from official website
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/npm/cli/releases/download/v8.19.2/npm-8.19.2.zip', 'npm.zip')"
    :: Extract npm archive to system directory
    powershell -Command "Expand-Archive -Path 'npm.zip' -DestinationPath 'C:\Program Files\nodejs' -Force"
    :: Clean up installer file
    del npm.zip
) else (
    echo npm is already installed
)

:: Check if Git is installed
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Installing Git...
    :: Download Git installer from official website
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/git-for-windows/git/releases/download/v2.34.1.windows.1/Git-2.34.1-64-bit.exe', 'git-installer.exe')"
    :: Install Git silently
    git-installer.exe /VERYSILENT /NORESTART /SP-
    :: Clean up installer file
    del git-installer.exe
) else (
    echo Git is already installed
    git --version
)

echo Updating BotTok...
git pull

npm install
node bottok.js
