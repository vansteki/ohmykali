---
description: ''
sidebar: 'docs'
---

# Introduction

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
