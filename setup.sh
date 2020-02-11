#!/bin/sh
set -e

echo "# Installing common tools"
apk add curl git npm p7zip util-linux jq bash binutils
pip install j2cli

echo "# Installing Chromium package."
apk upgrade && apk add --no-cache \
    chromium \
    freetype \
    harfbuzz \
    libstdc++ \
    nss \
    ttf-freefont

echo "# Getting @angular/cli"
npm install -g @angular/cli

echo "# Getting brotli"
apk add brotli


echo "# Getting kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv kubectl /usr/bin/kubectl

echo "# Getting aws cli"
apk add py-pip
pip install --upgrade pip
pip install awscli

echo "# Adding Docker"
apk add docker

echo "# Cleaning cache files"
rm -rf /var/cache/* \
mkdir /var/cache/apk


