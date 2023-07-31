#!/bin/sh

KERNEL_VERSION=5.15.6
BUSYBOX_VERSION=1.34.1


mkdir -p src
cd src

  # kernel
  KERNEL_MAJOR=$(echo $KERNEL_VERSION | sed 's/\([0-9]*\)[^0-9].*/\1/')
  # wget https://mirrors.edge.kernel.org/pub/linux/kernel/v$KERNEL_MAJOR.x/linux-$KERNEL_VERSION.tar.xz
  # tar -xf linux-$KERNEL_VERSION.tar.xz
  cd linux-$KERNEL_VERSION
    make defconfig
    make -j8 || exit
  cd ..

  # busybox
  wget https://busybox.net/downloads/busybox-$BUSYBOX_VERSION.tar.bz2
  tar -xf busybox-$BUSYBOX_VERSION.tar.bz2
  cd busybox-$BUSYBOX_VERSION
    make defconfig
    sed 's/^.*CONFIG_STATIC[^_].*$/CONFIG_STATIC=y/g' -i .config
    make CC=musl-gcc -j8 busybox || exit

  cd ..

cd ..