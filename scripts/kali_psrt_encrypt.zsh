#!/bin/zsh
# https://www.kali.org/docs/usb/usb-persistence/
# usage: ./kali_psrt_encrypt.zsh /dev/sda /dev/sda3 27GiB

set -x
disk=$1
newDisk=$2
size=$3

end=$size
read start _ < <(du -bcm ./iso/kali-linux-2021.1-live-amd64.iso | tail -1); echo $start
parted -s $disk mkpart primary ${start}MiB $end

cryptsetup --verbose --verify-passphrase luksFormat $newDisk
cryptsetup luksOpen $newDisk my_usb

mkfs.ext3 -L persistence /dev/mapper/my_usb
e2label /dev/mapper/my_usb persistence

mkdir -p /mnt/my_usb/
mount /dev/mapper/my_usb /mnt/my_usb
echo "/ union" > /mnt/my_usb/persistence.conf
umount /dev/mapper/my_usb

cryptsetup luksClose /dev/mapper/my_usb
