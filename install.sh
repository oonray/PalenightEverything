config="$HOME/.config"
nv="$config/nvim/"
v="$HOME/.vim"
colors="$v/colors"
syntax="$v/syntax"

mkdir "$nv"
mkdir "$colors"
mkdir "$syntax"

cp .bashrc $HOME
cp .vimrc $HOME
cp init.vim $nv
cp perfectdark.vim $colors




