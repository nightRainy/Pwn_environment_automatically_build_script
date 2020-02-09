#!/bin/sh
# auto install the pwn environment
# @author:知世
# @category:environment build

if [ `whoami` = "root" ];then
	apt-get update -y
	apt-get install python -y
	apt-get install python-pip -y
	apt-get install gcc -y
	apt-get install gdb -y
	apt-get install git -y
	apt-get install wget -y
	apt-get install gem -y
	apt-get install ruby -y
	apt-get install tmux -y
	apt-get install libc6-dev-i386 -y
	apt-get -y install netcat-traditional
	apt-get install ruby-dev -y
	gem install seccomp-tools
	gem install one_gadget
	pip install pwntools
	cd
	git clone https://github.com/nightRainy/pwndbg.git
	cd pwndbg 
	./setup.sh
	cd 
	git clone https://github.com/inaz2/roputils.git
	cd 
	git clone https://github.com/lieanu/LibcSearcher.git
	cd LibcSearcher
	python setup.py develop
else
	sudo apt-get update -y
	sudo apt-get install python -y
	sudo apt-get install python-pip -y
	sudo apt-get install gcc -y
	sudo apt-get install gdb -y
	sudo apt-get install git -y
	sudo apt-get install wget -y
	sudo apt-get install gem -y
	sudo apt-get install ruby -y
	sudo apt-get install tmux -y
	sudo apt-get -y install netcat-traditional
	sudo apt-get install libc6-dev-i386 -y
	sudo apt-get install ruby-dev -y
	sudo gem install seccomp-tools
	sudo gem install one_gadget
	pip install pwntools
	cd
	git clone https://github.com/nightRainy/pwndbg.git
	cd pwndbg 
	./setup.sh
	cd 
	git clone https://github.com/inaz2/roputils.git
	cd
	git clone https://github.com/lieanu/LibcSearcher.git
	cd LibcSearcher
	python setup.py develop
fi



