# busy-kernel
快速自己編譯一個有busybox tool可以用的linux kernel出來



## Reference Tutorial
[Build a minimal Linux with only Busybox in 1 hour](https://www.youtube.com/watch?v=asnXWOUKhTA)

## Blog Post
[build_kernel_with_busybox]()

## VM Environment Suggest
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

