#!/bin/sh
echo "--------------安装docker并启动服务------------------"
if [ `whoami` = "root" ];then
	#更新软件源
	yum update
	yum install -y yum-utils 
	yum install -y device-mapper-persistent-data 
	yum install -y lvm2
	#添加docker的软件源
	yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
	yum update
	#安装docker 
	yum install docker-ce -y
	#增加用户组
	usermod -aG docker USER_NAME
	#添加到开机启动
	systemctl enable docker
	# 启动docker服务
	systemctl start docker
else
	sudo yum update
	sudo yum install -y yum-utils 
	sudo yum install -y device-mapper-persistent-data 
	sudo yum install -y lvm2
	sudo #添加docker的软件源
	sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
	sudo yum update
	sudo #安装docker 
	sudo yum install docker-ce -y
	sudo #增加用户组,请将用户名更改为您的用户名
	sudo usermod -aG docker USER_NAME
	sudo #添加到开机启动
	sudo systemctl enable docker
	sudo # 启动docker服务
	sudo systemctl start docker
fi

echo "-----------------下载并在本地启动ubuntu的docker------------------"
#下载ubuntu
docker pull ubuntu
docker pull ubuntu:16.04
docker pull ubuntu:19.04
#查看是否下载成功
docker images ubuntu
#运行ubuntu16.04(开启特权模式用于gdb调试)
docker run --privileged --rm -it ubuntu:16.04














