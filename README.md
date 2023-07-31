# busy-kernel
快速自己編譯一個有busybox tool可以用的linux kernel出來



## Reference Tutor Video
[Build a minimal Linux with only Busybox in 1 hour](https://www.youtube.com/watch?v=asnXWOUKhTA)

## 包含VM搭建的tutorial
[build_kernel_with_busybox](https://github.com/cbot918/busykernel/blob/master/build_kernel_with_busybox.md)

## Lab Environment
- ubuntu 20.04

## Getting-Started

### clone repo
```
git clone https://github.com/cbot918/busykernel && cd busykernel
```

### pre-install

install all essential packages
```
./pre-install.sh
```

### build kernel and busybox
```
./busyboxx.sh
```

### run kernel with qemu
```
./run.sh
```

## Important command

exit kernel with
```
poweroff -f
```
if console stuck
```
killall qemu-system-x86_64
```

## VM helper
1. install virtualbox
2. install vagrant
3. vagrant config file: Vagranfile
4. command:
```
vagrant up
vagrant ssh
```

