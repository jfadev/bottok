#!/bin/bash

echo "Bot Tok Install"

# Update package lists
sudo apt update

# Check and install required software if needed
declare -a programs=("node" "npm" "git")
for program in "${programs[@]}"; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        sudo apt-get -y install $program
    else
        echo "$program already installed."
        $program --version
    fi
done

# Install BotTok
echo "Installing BotTok..."
git clone git@github.com:jfadev/bottok.git
cd bottok
npm install

# Start BotTok
echo "Starting BotTok..."
node bottok.js
