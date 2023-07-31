#!/bin/sh

KERNEL_VERSION=5.15.6
BUSYBOX_VERSION=1.34.1


mkdir -p src
cd src

  # busybox
    cd busybox-$BUSYBOX_VERSION
    
    # make defconfig
    sed 's/^.*CONFIG_STATIC[^_].*$/CONFIG_STATIC=y/g' -i .config
    make CC=musl-gcc -j8 busybox || exit

  cd ..

cd ..