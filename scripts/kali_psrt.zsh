#!/bin/zsh
# https://www.kali.org/docs/usb/usb-persistence/
# usage: ./kali_psrt.zsh /dev/sdb

set -x
usb=$1
#usb=/dev/sdb

sudo fdisk $usb <<< $(printf "n\np\n\n\n\nw")

sudo mkfs.ext3 -L persistence ${usb}3

sudo mkdir -p /mnt/my_usb
sudo mount ${usb}3 /mnt/my_usb
echo "/ union" | sudo tee /mnt/my_usb/persistence.conf
sudo umount ${usb}3
