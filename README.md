# Pwn-environment-automatically-build-script

> These shell script are used to automatically build the pwn environment, and help u to build a docker

You can change the contents of the files according to your needs.

**Note my pwndbg has been changed,the original version is here:[pwndbg](https://github.com/pwndbg/pwndbg)**

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
