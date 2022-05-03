---
description: ''
sidebar: 'docs'
---

# Introduction

Prepare a Kali Bootable USB Drive (2022.1 by default), see
[this article](https://www.kali.org/docs/usb/)

## HTTP way

This script use persistence encryption by default.

```bash
 curl -Lo ok git.io/ohmykali-dev && chmod o+x ok && ./ok
```
## Ansible way

```
apt install ansible -y
```

```
git clone htps://github.com/vansteki/ohmykali
cd ohmykali
cp vars.example.yml vars.yml
```

### Persistence encryption:

```bash
ansible-storybook psrt_encrypt.yml
```

### No persistence encryption:

```bash
ansible-storybook psrt.yml
```

Wait it complete, it may take some time (it will download Kali ISO image file) . 🍵🫖

3.Done

## Before you start

### Check your USB and devices

You should use `fdisk -l` to check your disk info first.

Find your USB device:

```
Device     Boot   Start     End Sectors  Size Id Type
/dev/sdb1  *         64 7012351 7012288  3.3G 17 Hidden HPFS/NTFS
/dev/sdb2       7012352 7013823    1472  736K  1 FAT12
```

Then the ansible playbook will ask you to input some info:

```
> ansible-playbook psrt_encrypt.yml

What is your USB device (eg /dev/sda)?: /dev/sdb
What is your USB device new sector (eg /dev/sda3)?: /dev/sdb3
What size do you want to part (eg 7GiB)?: 11GiB
enter your passphrase
enter your passphrase again
```

Waiting for downloading ISO file and disk partition. Be patient, it may take some time.

## Config options

All options in `vars.example.yml`:

```
isoDir: ./iso
isoName: kali-linux-2022.1-live-amd64.iso

officialISO: https://cdimage.kali.org/kali-2022.1/kali-linux-2022.1-live-amd64.iso
officialMirrorISO: https://cdimage.kali.org/kali-2022.1/kali-linux-2022.1-live-amd64.iso
userMirrorISO: http://kali.cs.nctu.edu.tw/kali-images/kali-2022.1/kali-linux-2022.1-live-amd64.iso

timeout: 3600
```

you can copy `vars.yml` to edit configs

```
cp vars.example.yml vars.yml
```

### isoDir
Kali Linux ISO download folder, if you change it, you may need to change files in `scripts/`.
```
isoDir: ./iso
```

### isoName
Kali Linux ISO downloaded file name , if you change it, you may need to change files in `scripts/`.
```
isoName: kali-linux-2022.1-live-amd64.iso
```

### timeout
Disk Part task timeout
```
timeout: 3600
```
## ISO Mirrors Sites

You can also use mirror site if download progress is too slow.

Note: This script use `kali-2022.1` by default. If your live USB is made with `kali-2022.1`, you should also config these options to the same version. 

### officialISO
```
officialISO: https://kali.download/base-images/kali-2022.1/kali-linux-2022.1-live-amd64.iso
```
### officialMirrorISO
```
officialMirrorISO: https://cdimage.kali.org/kali-2022.1/kali-linux-2022.1-live-amd64.iso
```
### userMirrorISO
```
userMirrorISO: https://kali.cs.nctu.edu.tw/kali-images/kali-2022.1/kali-linux-2022.1-live-amd64.iso
```
