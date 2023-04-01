#!/bin/sh

echo "Generating Your SSH Public Key"

# https://git-scm.com/book/pt-pt/v2/Git-no-Servidor-Generating-Your-SSH-Public-Key
apk add openssh

ssh-keygen
echo "SSH Public Key:"
cat /root/.ssh/id_rsa.pub
echo "Add your SSH Public Key to your GitHub account."
echo "https://github.com/settings/keys"