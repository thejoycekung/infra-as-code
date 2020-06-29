#!/bin/bash
# insta-exit if things go wrong
set -e

echo "-------- clone and setup repo --------"
git clone https://github.com/Artemmkin/raddit.git
cd raddit
sudo bundle install

echo "-------- start application --------"
sudo systemctl start raddit
sudo systemctl enable raddit
