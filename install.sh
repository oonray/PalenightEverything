config="$HOME/.config"
nv="$config/nvim/"
v="$HOME/.vim"
colors="$v/colors"
syntax="$v/syntax"

mkdir "$nv"
mkdir "$colors"
mkdir "$syntax"

sudo apt-get install -y git neofetch vim neovim tmux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./settings-backup ~/.config/dconf/user
cp .tmux.conf $HOME
cp .bashrc $HOME
cp .vimrc $HOME
cp init.vim $nv
cp perfectdark.vim $colors



