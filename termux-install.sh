#!/bin/sh

echo "Alpine in Termux Install"
apt -yq update
apt -yq upgrade
pkg install -yq proot-distro
proot-distro install alpine
proot-distro login alpine
