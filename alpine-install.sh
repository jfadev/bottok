#!/bin/sh

echo "Bot Tok Alpine Install"

echo Install BotTok Dependenties:

# install OpenSSH
apk add openssh

# Set Alpine v3.17 repositories
echo http://nl.alpinelinux.org/alpine/v3.17/community > /etc/apk/repositories
echo http://nl.alpinelinux.org/alpine/v3.17/main >> /etc/apk/repositories
apk update

# Install packages
programs="nmap chromium nodejs yarn git openssh"
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
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
yarn install --network-timeout 6000000

echo "Starting BotTok..."
node bottok.js
