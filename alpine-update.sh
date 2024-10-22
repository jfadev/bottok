#!/bin/sh

echo "Bot Tok Alpine Update"

echo "Latest version:"
git describe --tags --abbrev=0

echo "Check BotTok Dependenties:"
programs="nodejs yarn git openssh"
for program in $programs; do
    echo $program
    $program --version
done

echo "Updating BotTok..."
git pull
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
yarn install --network-timeout 6000000

echo "Starting BotTok..."
node bottok.js
