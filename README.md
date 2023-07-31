# busy-kernel

## Getting-Started
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