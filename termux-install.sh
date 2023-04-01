#!/bin/sh

echo "Alpine in Termux Install"
apt -yq update
apt -yq upgrade
pkg -yq install proot-distro
proot-distro -yq install alpine
proot-distro login alpine
