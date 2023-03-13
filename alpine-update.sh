#!/bin/sh

echo "Bot Tok Update"

echo "Latest version:"
git describe --tags --abbrev=0

# Check and install required software if needed
programs="nodejs yarn git openssh"
for program in $programs; do
    if ! command -v $program >/dev/null 2>&1; then
        echo "Installing $program..."
        apk add --no-cache $program
    else
        echo "$program already installed."
        $program --version
    fi
done

# Update BotTok
echo "Updating BotTok..."
# if ! git pull >/dev/null 2>&1; then
#     echo "BotTok update failed. Please resolve any issues and try again."
#     exit 1
# fi
git pull

# Install dependencies
yarn install

# Start BotTok
# Start BotTok
echo "Starting BotTok..."
node bottok.js
