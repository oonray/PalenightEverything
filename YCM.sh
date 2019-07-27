#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo add-apt-repository ppa:ubuntu-lxc/stable
sudo apt update
sudo apt-get install -y cmake python3-dev mono-devel golang

cd ~/.vim/bundle/YouCompleteMe && python3 ./install.py --all && python3 install.sh --clangd-completer
