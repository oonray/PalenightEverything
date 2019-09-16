config="$HOME/.config"
nv="$config/nvim/"
v="$HOME/.vim"
colors="$v/colors"
syntax="$v/syntax"
i3="$config/i3"



mkdir "$nv"
mkdir "$colors"
mkdir "$syntax"

sudo apt-get install -y git neofetch vim neovim tmux python python3 python-pip python3-pip  exuberant-ctags snmp-mibs-downloader gdb radare2
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
python3 -m pip install -r requirements.txt

echo "# As the snmp packages come without MIB files due to license reasons, loading" > /etc/snmp/snmp.conf
echo "# of MIBs is disabled by default. If you added the MIBs you can reenable" >> /etc/snmp/snmp.conf
echo "# loading them by commenting out the following line." >> /etc/snmp/snmp.conf
echo "#mibs :" >> /etc/snmp/snmp.conf

echo "set disassembly intel" > ~/.gdbinit
echo "source $(pwd)/peda/peda.py" >> ~/.gdbinit

cat ./settings-backup > ~/.config/dconf/user
cp .tmux.conf $HOME
cp .bashrc $HOME
cp .vimrc $HOME
cp init.vim $nv
cp perfectdark.vim $colors
cp -r syntax $v
cp -r i3 $config
cp -r i3status $config


