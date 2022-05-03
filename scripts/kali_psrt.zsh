#!/bin/zsh
# https://www.kali.org/docs/usb/usb-persistence/
# usage: ./kali_psrt.zsh /dev/sda /dev/sda3 27GiB

set -x
disk=$1
newDisk=$2
size=$3

end=$size
read start _ < <(du -bcm ./iso/kali-linux-2022.1-live-amd64.iso | tail -1); echo $start
parted -s $disk mkpart primary ${start}MiB $end

mkfs.ext3 -L persistence $newDisk
e2label $newDisk persistence

mkdir -p /mnt/my_usb
mount $newDisk /mnt/my_usb
echo "/ union" > /mnt/my_usb/persistence.conf
umount $newDisk
