config="$HOME/.config"
nv="$config/nvim/"
v="$HOME/.vim"
colors="$v/colors"
syntax="$v/syntax"
i3="$config/i3"
r2themes=" ~/.local/share/radare2/cons"


mkdir "$nv"
mkdir "$colors"
mkdir "$syntax"
mkdir -p  $r2themes

sudo apt-get install -y git neofetch vim neovim tmux python python3 python-pip python3-pip  exuberant-ctags snmp-mibs-downloader gdb radare2
sudo apt-get install -y pcp pcp-webapi libpcp-pmda3-dev libpcp3-dev
sudo apt-get install -y linux-tools-common net-tools
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
python3 -m pip install -r python/requirements.txt

echo "# As the snmp packages come without MIB files due to license reasons, loading" > /etc/snmp/snmp.conf
echo "# of MIBs is disabled by default. If you added the MIBs you can reenable" >> /etc/snmp/snmp.conf
echo "# loading them by commenting out the following line." >> /etc/snmp/snmp.conf
echo "#mibs :" >> /etc/snmp/snmp.conf

git submodule update --init --recursive
cd debuggers/pwndbg && ./setup.sh && cd .. && mv pwndbg ~/pwndbg-src
git clone https://github.com/longld/peda.git ~/peda
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py

cp debuggers/.gdbinit ~/
sudo cp debuggers/bin/* /usr/bin/

cat ./bash/settings-backup > ~/.config/dconf/user

sudo cp debuggers/radare2/palenight $r2themes
cp debuggers/radare2/.radare2rc $HOME
cp bash/.tmux.conf $HOME
cp bash/.bashrc $HOME
cp vim/.vimrc $HOME
cp vim/init.vim $nv
cp vim/perfectdark.vim $colors
cp -r ./vim/syntax $v
cp -r ./i3gaps/i3 $config
cp -r ./i3gaps/i3status $config


