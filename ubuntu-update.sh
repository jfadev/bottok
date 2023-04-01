#!/bin/bash

echo "Bot Tok Ubuntu Update"

echo "Latest version:"
git describe --tags --abbrev=0

echo Check BotTok Dependenties:
declare -a programs=("nodejs" "npm" "git" "openssh-client")
for program in "${programs[@]}"; do
    echo $program
    $program --version
done

echo "Updating BotTok..."
git pull
npm install

echo Starting BotTok...
node bottok.js
