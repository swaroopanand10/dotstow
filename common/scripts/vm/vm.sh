#!/usr/bin/env bash

# cp /usr/share/edk2/x64/OVMF_VARS.4m.fd /tmp/my_vars.bin # for uefi
# export SDL_VIDEO_X11_DGAMOUSE=0

args=(

  ##### This will be used when isntalling ###
  # -cdrom /path/to/iso

	-enable-kvm

	-cpu host

	-drive file=/home/swaroop/vm/VM_clone.img # location of vm

	-usb -device usb-tablet # this solves dancing cursor but only on X

	-m 5G

	-smp cores=4,threads=2

  # -monitor stdio # to check the kvm status

	-boot a # this will directly boot the hardisk

	# -boot menu=on

	-machine type=q35

	####### if we enable this vga option with "-device virtio-vga-gl" option, then 3d accel won't work but archwiki says it will work
	# -vga virtio

	##### Display ########

	# these two give most performance but vga shouldn't be virtio
	-device virtio-vga-gl
	-display sdl,gl=on

	#### These two are crashing
	# -device VGA,vgamem_mb=256 # hyprland won't work because of this
	# -device virtio-gpu-gl # this crashes

	### These two are working when spice-client like virt-viewer
	# -display spice-app,gl=on
	# -device virtio-gpu-gl

	##### this will enable uefi (is not working) #########
	# -global ICH9-LPC.disable_s3=1
	# -drive if=pflash,format=raw,readonly=on,file=/usr/share/edk2/x64/OVMF_CODE.4m.fd
	# -drive if=pflash,format=raw,file=/tmp/my_vars.bin

	##### Spice setup ###### (not compatible with gl context)
	# -device virtio-serial-pci
	# -spice unix=on,addr=/tmp/vm_spice.socket,disable-ticketing=on
	# -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0
	# -chardev spicevmc,id=spicechannel0,name=vdagent
)

env WLR_NO_HARDWARE_CURSORS=1 SDL_VIDEO_X11_DGAMOUSE=0 qemu-system-x86_64 "${args[@]}"
