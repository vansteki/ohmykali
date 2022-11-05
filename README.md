Oh My Kali
---

## Make a Kali Linux live USB like a Boss

Oh My Kali is an Ansible Playbook that help you create Kali Linux persistence USB.

### Ansible way

```
apt install ansible -y
```

```
git clone htps://github.com/vansteki/ohmykali && cd ohmykali
ansible-storybook psrt.yml
```

### 2. Check and enter partition information

You should use `fdisk -l` or `lsblk` to find your USB device

Find your USB device:
```
Device     Boot   Start     End Sectors  Size Id Type
/dev/sdb1  *         64 7012351 7012288  3.3G 17 Hidden HPFS/NTFS
/dev/sdb2       7012352 7013823    1472  736K  1 FAT12
```

Ansible playbook will ask you to type some info:

```
> ansible-playbook psrt.yml

What is your USB device (eg /dev/sda)?: /dev/sdb
```

### 3. Done, reboot
