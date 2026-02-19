#!/bin/sh

echo "Bot Tok Alpine Install (for NPX)"

echo "Install BotTok Dependencies:"

# Install Node from Alpine v3.22 repositories
apk add --repository=https://dl-cdn.alpinelinux.org/alpine/v3.22/main --repository=https://dl-cdn.alpinelinux.org/alpine/v3.22/community chromium --no-cache

# Install Chromium from Alpine v3.17 repositories
apk add --repository=https://dl-cdn.alpinelinux.org/alpine/v3.17/main --repository=https://dl-cdn.alpinelinux.org/alpine/v3.17/community chromium --no-cache

echo "Starting BotTok..."
npx bottok
