#!/bin/sh

echo "Alpine in Termux Install"

apt update
apt upgrade
pkg install proot-distro
proot-distro install alpine
proot-distro login alpine
