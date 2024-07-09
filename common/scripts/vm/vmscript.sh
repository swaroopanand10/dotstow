#!/bin/bash
# cp /usr/share/ovmf/x64/ovmf_vars_x64.bin /tmp/my_vars.bin
qemu-system-x86_64 \
  -enable-kvm \
  -m 3G \
  -smp cores=3,threads=1 \
  -cpu host,kvm=off \
  -vga none \
  -monitor stdio \
  -display none \
  -usb -usbdevice host:04d9:0125 \
  -usb -usbdevice host:046d:c05a \
  -device vfio-pci,host=07:00.0,multifunction=on \
  -device vfio-pci,host=07:00.1 \
  -drive file=/home/swaroop/vm/VM.img,index=0,media=disk,if=virtio,format=raw \
  -drive file=/home/swaroop/archlinux-2024.07.01-x86_64.iso
