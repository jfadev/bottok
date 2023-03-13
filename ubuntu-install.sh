#!/bin/bash

echo "Bot Tok Install"

# Update package lists
sudo apt update

# Check and install required software if needed
declare -a programs=("nodejs" "npm" "git" "openssh-client")
for program in "${programs[@]}"; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        sudo apt-get -y install $program
    else
        echo "$program already installed."
        $program --version
    fi
done

# Add your SSH Public Key to your GitHub account
echo "Add your SSH Public Key to your GitHub account"

ssh-keygen
cat ~/.ssh/id_rsa.pub

echo "Copy its content and paste it into your GitHub account in https://github.com/settings/keys"
read -p "Once this is done press enter to continue"

# Install BotTok
echo "Installing BotTok..."
git clone git@github.com:jfadev/bottok.git
cd bottok
npm install

# Start BotTok
echo "Starting BotTok..."
node bottok.js
