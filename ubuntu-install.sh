#!/bin/bash

echo "Bot Tok Ubuntu Install"

echo Install BotTok Dependenties:
sudo apt update
declare -a programs=("nodejs" "npm" "git" "openssh-client")
for program in "${programs[@]}"; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        sudo apt-get -qq -y install $program
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
read -p "Once this is done press enter to continue"

echo "Installing BotTok..."
git clone git@github.com:jfadev/bottok.git
cd bottok
npm install

echo "Starting BotTok..."
node bottok.js
