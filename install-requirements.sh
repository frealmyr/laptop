#!/bin/bash

echo "Install ansible and git.."
sudo pacman -S ansible git

echo "Install ansible collection community.general.."
ansible-galaxy collection install community.general

echo "Install bitwarden-cli.."
curl -L -o bw-linux.zip "https://vault.bitwarden.com/download/?app=cli&platform=linux" \
  && unzip bw-linux.zip \
  && rm bw-linux.zip \
  && chmod +x bw \
  && sudo mv ./bw /usr/bin/bw
