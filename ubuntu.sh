#!/bin/sh
if [ `whoami` = "root" ];then
	wget -qO- https://get.docker.com/ | sh
	service docker start
	echo "If u want to run the docker without the root user,u can use:"
	echo "usermod -aG docker username\n"
else
	sudo wget -qO- https://get.docker.com/ | sh
	sudo service docker start
	echo "If u want to run the docker without the root user,u can use:"
	echo "sudo usermod -aG docker username\n"
	
fi
