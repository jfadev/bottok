#!/bin/sh

echo "Bot Tok Install"

# Update package lists
apk update

# Check and install required software if needed
declare -a programs=("nodejs" "npm" "git")
for program in "${programs[@]}"; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        apk add --no-cache $program
    else
        echo "$program already installed."
        $program --version
    fi
done

# Install BotTok
echo "Installing BotTok..."
npm install

# Start BotTok
echo "Starting BotTok..."
node bottok.js
