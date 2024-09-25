cd ~/OSDev

qemu-system-i386 -cdrom myos.iso
sudo dd if=myos.iso of=/dev/sdx && sync
