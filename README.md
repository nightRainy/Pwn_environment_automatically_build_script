# Pwn-environment-automatically-build-script

> These shell script are used to automatically build the pwn environment, and help u to build a docker!
> By the way,these script is just install the basic tools,so ... make it better by youself!!

You can change the contents of the files according to your needs.

**Note my pwndbg has been changed,the original version is here:[pwndbg](https://github.com/pwndbg/pwndbg)**

## ubuntu20.04

if u wann use it in ubuntu20.04,and want to install the pip2 , u can:

```
sudo add-apt-repository universe
sudo apt update 
sudo apt install python2
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python get-pip.py
```

and edit the pwndbg's setup.sh,remove the python-pip:) enjoy it

By the way, glibc 2.31's tcache has been changed....

## pwn environment

### usage
```
chmod +x setup.sh
./setup.sh
```

### It will automatically install :
* [gcc](https://gcc.gnu.org/)
* [gdb](https://www.gnu.org/software/gdb/)
* [libc6_dev_i386](https://pkgs.org/download/libc6-dev-i386)
* [pwntools](https://github.com/Gallopsled/pwntools.git/)
* [pwndbg](https://github.com/nightRainy/pwndbg)
* [LibcSearcher](https://github.com/lieanu/LibcSearcher)
* [one_gadget](https://github.com/david942j/one_gadget.git)
* [roputils](https://github.com/inaz2/roputils.git)
* [tmux](https://github.com/tmux/tmux)
* [nc]()
* [seccomp-tools](https://github.com/david942j/seccomp-tools)


## pwn docker

There are my pwn dockers,u can download them to use 

```
docker pull zhihsi/dockerpwn:2.23
docker pull zhihsi/dockerpwn:2.27
docker pull zhihsi/dockerpwn:2.29
docker pull zhihsi/dockerpwn:2.31
```

Usage:

```
docker run -i -t --privileged -v hostpath:dockerpath zhihsi/dockerpwn:2.27 bash
```

## docker
If you want to install docker in the centos7, u can use 'centos7.sh' to build one,else u can us ubuntu.sh to build docker in the ubuntu

### centos7

#### usage
```
chmod +x centos7.sh
#You need to edit this script to change the username for the docker
./centos7.sh
```

### ubuntu
#### usage
```
chmod +x ubuntu.sh
./ubuntu.sh
```
