#!/usr/bin/env bash


DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
DOWNLOAD_URL=${DOWNLOAD_URL:-"https://drive.google.com/uc?id=1kkT3d0ZPpb33KNfbFk6Tzmn7uPPo8EQo"}


sudo apt-get update
sudo apt install -y python3 python3-pip
pip3 install gdown
export PATH=$PATH:~/.local/bin
gdown -O 'fifteenrock.tar.gz' $DOWNLOAD_URL

tar xf fifteenrock.tar.gz
fifteenrock/install.sh
