@echo off
echo Bot Tok Windows Update

echo Latest versions:
git describe --tags --abbrev=0

echo Check BotTok Dependenties:
echo Node.js
node --version
echo Git
git --version

echo Updating BotTok...
git pull
npm install

echo Starting BotTok...
node bottok.js
