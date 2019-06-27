config="$HOME/.config"
nv="$config/nvim/"
v="$HOME/.vim"
colors="$v/colors"
syntax="$v/syntax"

mkdir "$nv"
mkdir "$colors"
mkdir "$syntax"

apt-get isntall -y git neofetch
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .bashrc $HOME
cp .vimrc $HOME
cp init.vim $nv
cp perfectdark.vim $colors




