@echo off
echo Bot Tok Windows Install

echo Install BotTok Dependenties:
where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Installing Node.js...
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://nodejs.org/dist/v18.15.0/node-v18.15.0-x64.msi', 'node-installer.msi')"
    msiexec /i node-installer.msi /passive INSTALLDIR="C:\Program Files\nodejs\" ADDLOCAL=ALL /norestart
    del node-installer.msi
) else (
    echo Node.js is already installed
    node --version
)
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Installing Git...
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/git-for-windows/git/releases/download/v2.40.0.windows.1/Git-2.40.0-64-bit.exe', 'git-installer.exe')"
    git-installer.exe /VERYSILENT /NORESTART /SP-
    del git-installer.exe
) else (
    echo Git is already installed
    git --version
)

where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo You need to close and open the installer to continue the installation.
    echo This terminal will close in
    timeout 10
    exit
)
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo You need to close and open the installer to continue the installation.
    echo This terminal will close in
    timeout 10
    exit
)

echo Add your SSH Public Key to your GitHub account
if not exist %userprofile%\.ssh mkdir %userprofile%\.ssh
ssh-keygen -t rsa -N "" -f %userprofile%\.ssh\id_rsa
type %userprofile%\.ssh\id_rsa.pub

echo Open with Notepad.exe the file %userprofile%\.ssh\id_rsa.pub,
echo copy its content and paste it into your GitHub account in:
echo https://github.com/settings/ssh/new
echo Once this is done close Notepad.exe window to continue.
notepad %userprofile%\.ssh\id_rsa.pub

echo Installing BotTok...
"%programfiles%\Git\mingw64\libexec\git-core\git.exe" clone git@github.com:jfadev/bottok.git
cd bottok
call "%programfiles%\nodejs\npm" install
echo BotTok has been successfully installed!
timeout 5

echo Starting BotTok...
echo If BotTok does not open just open it yourself!
timeout 5
start "%programfiles%\nodejs" node.exe bottok.js