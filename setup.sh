#!/bin/sh
if [ `whoami` = "root" ];then
	apt-get update -y
	apt-get install python -y
	apt-get install python-pip -y
	apt-get install gcc -y
	apt-get install gdb -y
	apt-get install git -y
	apt-get install zsh -y
	apt-get install wget -y
	apt-get install gem -y
	apt-get install ruby -y
	apt-get install tmux
	apt-get install libc6-dev-i386 -y
	gem install one_gadget
	pip install pwntools
	git clone https://github.com/pwndbg/pwndbg.git
	cd pwndbg 
	./setup.sh
	cd 
	git clone https://github.com/inaz2/roputils.git
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" -y
	cd
	sed -i 's|robbyrussell|bira|' .zshrc
	source .zshrc
else
	sudo apt-get update -y
	sudo apt-get install python -y
	sudo apt-get install python-pip -y
	sudo apt-get install gcc -y
	sudo apt-get install gdb -y
	sudo apt-get install git -y
	sudo apt-get install zsh -y
	sudo apt-get install wget -y
	sudo apt-get install gem -y
	sudo apt-get install ruby -y
	sudo apt-get install tmux -y
	sudo apt-get install libc6-dev-i386 -y
	sudo gem install one_gadget
	pip install pwntools
	git clone https://github.com/pwndbg/pwndbg.git
	cd pwndbg 
	./setup.sh
	cd 
	git clone https://github.com/inaz2/roputils.git
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" -y
	cd
	sed -i 's|robbyrussell|bira|' .zshrc
	source .zshrc
fi



