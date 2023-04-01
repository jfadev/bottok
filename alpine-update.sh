#!/bin/sh

echo "Bot Tok Alpine Update"

echo "Latest version:"
git describe --tags --abbrev=0

echo Check BotTok Dependenties:
programs="nodejs yarn git openssh"
for program in $programs; do
    echo $program
    $program --version
done

echo "Updating BotTok..."
git pull
yarn install

echo "Starting BotTok..."
node bottok.js
