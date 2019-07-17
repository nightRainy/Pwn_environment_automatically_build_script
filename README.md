# Pwn-environment-automatically-build-script

> These shell script are used to automatically build the pwn environment, and help u to build a docker

You can change the contents of the files according to your needs.

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
* [pwndbg](https://github.com/pwndbg/pwndbg/)
* [oh_My_zsh](https://ohmyz.sh/)
* [one_gadget](https://github.com/david942j/one_gadget.git)
* [roputils](https://github.com/inaz2/roputils.git)

## docker
if you want to install docker in the centos7, u can use 'centos7.sh' to build one

### centos7

#### usage
```
chmod +x centos7.sh
#You need to edit this script to change the username for the docker
./centos7.sh
```
