#Standard local locations|j
sh=./bash
dbg=./debuggers
i3=./i3gaps

#Confiug Files for vim and othe configs.
#Moste is vim or i3 config so moved to vim.
vim=$(HOME)/.vim
colors=$(h_vim)/colors
syntax=$(h_vim)/syntax
config=$(HOME)/.config
nvimconf=$(config)/nvim
r2themes=$(HOME)/.local/share/radare2/cons

#Vim and neovim config paths

#installs all config and autocompletion for vim
#i3-gaps is optional
#color scheme palenght is applied to
#	*radare2
#	*vim
#	*nvim
#	*i3-gaps
#	*terminal

all: programs bash gdb nvim python c mibs gdb radare2 tmux 

i3:
	sudo apt-get install -y git build-essential autoconf pkg-config libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev
	
	sudo apt-get install i3 -y
	git clone https://www.github.com/Airblader/i3 /tmp/i3-gaps
	cd /tmp/i3-gaps\
	       	&& autoreconf --force --install\
	       	&& rm -rf build/ \
	        && mkdir -p build && cd build/ \
	        && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers 
	cd /tmp/i3-gaps/build && make && make install	
transperent:
	sudo apt-get install -y compton feh
	cp vim/compton.conf $(config)
	echo "exec compton" >> $(HOME)/.config/i3/config
	echo "exec --no-startup-id feh --bg-fill $(shell pwd)/the-vision-of-the-valley-of-dry-bones-1866.jpg" >> $(HOME)/.config/i3/config
programs:
	sudo apt-get install -y neofetch git curl

python:
	sudo apt-get install -y python3 python3-pip python python-pip
	python3 -m pip install -r python/requirements.txt

c:
	sudo apt-get install -y exuberant-ctags

go:
	sudo add-apt-repository ppa:longsleep/golang-backports
	sudo apt-get update
	sudo apt-get install -y golang-go golang-go.tools


mibs:
	sudo apt-get install -y snmp-mibs-downloader
	sudo mkdir -p /etc/snmp/
	sudo touch /etc/snmp/snmp.conf
	@echo "#mibs :" | sudo tee /etc/snmp/snmp.conf 

completion: go
	go get golang.org/x/tools/internal/lsp/cmd
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
	sudo apt update
	sudo apt-get install -y cmake python3-dev mono-devel golang
	cd ~/.vim/bundle/YouCompleteMe && python3 ./install.py --all && python3 install.py --clangd-completer
	

gdb:
	@echo [+] Installing Gdb Peda
	sudo apt-get install gdb
	git submodule update --init --recursive
	rm -rf $(HOME)/peda
	git clone https://github.com/longld/peda.git $(HOME)/peda
	wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py  
	cp debuggers/.gdbinit $(HOME)/
	sudo cp debuggers/bin/*	/usr/bin/

radare2:
	sudo apt-get install -y radare2
	cp debuggers/radare2/.radare2rc $(HOME)
	cp debuggers/radare2/palenight $(r2themes)

bash:
	sudo apt-get install tmux pcp pcp-webapi libpcp-pmda3-dev libpcp3-dev linux-tools net-tools -y
	cp bash/.tmux.conf $(HOME)
	cp bash/.bashrc $(HOME)
	cat bash/settings-backup > $(HOME)/.config/dconf/user

nvim: 
	sudo curl -fLo /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage
	sudo chmod +x /bin/nvim
	sudo apt-get -y install npm
	mkdir -p /home/oonray/.config/nvim/
	sudo npm install -g yarn
	curl -sL install-node.now.sh/lts | sudo bash
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp vim/.vimrc $(HOME)
	cp -r ./vim/syntax $(vim)
	cp vim/init.vim $(nvimconf)/init.vim 

ccls:
	sudo apt install -y zlib1g-dev libncurses-dev
	sudo apt install -y clang libclang-dev
	sudo snap install ccls --classic
	sudo apt-get install -y luarocks
#	sudo luarocks install --server=http://luarocks.org/dev digestif
	cp vim/coc.vim $(nvimconf)

tmux:
	sudo apt-get install tmux
	cp bash/.tmux.conf $(HOME)
