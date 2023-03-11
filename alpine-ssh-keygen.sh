#!/bin/sh

echo "Generating Your SSH Public Key"

# https://git-scm.com/book/pt-pt/v2/Git-no-Servidor-Generating-Your-SSH-Public-Key

ssh-keygen
echo "SSH Public Key:"
cat /data/data/com.termux/files/home/.ssh/id_rsa.pub
echo "Add your SSH Public Key to your GitHub account."
echo "https://github.com/settings/keys"