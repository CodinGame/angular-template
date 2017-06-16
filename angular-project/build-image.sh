#!/bin/bash

cd /project/target

apt-get update
apt-get install -y curl tee

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

apt-get update && apt-get install yarn -y

yarn install
