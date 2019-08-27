#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/boothos.kernel isodir/boot/boothos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "boothos" {
	multiboot /boot/boothos.kernel
}
EOF
grub-mkrescue -o boothos.iso isodir
