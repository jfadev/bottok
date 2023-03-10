#!/bin/sh

echo "Alpine in Termux Install"

apt update
apt upgrade
pkg install proot-distro
proot-distro install alpine
proot-distro login alpine
apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium

apk add git
git clone git@github.com:jfadev/bottok.git
cd bottok

# Install BotTok
./alpine-install.sh
