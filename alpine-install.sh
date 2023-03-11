#!/bin/sh

echo "Bot Tok Install"

apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium

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

# Clone Repository
git clone git@github.com:jfadev/bottok.git
cd bottok

# Install BotTok
echo "Installing BotTok..."
npm install

# Start BotTok
echo "Starting BotTok..."
node bottok.js
