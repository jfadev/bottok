#!/bin/sh

echo "Bot Tok Alpine Install"

echo Install BotTok Dependenties:
# Install Chromium
apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium

programs="nodejs yarn git openssh"
for program in $programs; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        apk add -q --no-cache $program
    else
        echo "$program already installed."
        $program --version
    fi
done

echo "Add your SSH Public Key to your GitHub account"
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

echo "Copy its content and paste it into your GitHub account in:" 
echo "https://github.com/settings/ssh/new"
echo "Once this is done press enter to continue"
read

echo "Installing BotTok..."
git clone git@github.com:jfadev/bottok.git
cd bottok
yarn install

echo "Starting BotTok..."
node bottok.js
