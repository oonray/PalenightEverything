all:
	apt-get install -y git build-essential autoconf pkg-config libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev
	
	sudo apt-get install i3
	git clone https://www.github.com/Airblader/i3 /tmp/i3-gaps
	cd /tmp/i3-gaps\
	       	&& autoreconf --force --install\
	       	&& rm -rf build/ \
	        && mkdir -p build && cd build/ \
	        && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers 
	cd /tmp/i3-gaps/build && make && make install	
