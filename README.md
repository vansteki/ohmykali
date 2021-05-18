Oh My Kali
---

👉 [https://vansteki.github.io/ohmykali/](https://vansteki.github.io/ohmykali/)

## Make a Kali Linux live USB like a Boss

Oh My Kali is an ansible playbook that help you create Kali Linux persistence encryption USB.

### HTTP way (persistence encryption by default)

### 1.Run Kali live OS as root 

You need to prepare a Kali Linux USB first, see [this article](https://www.kali.org/docs/usb/live-usb-install-with-windows/)

After you are running it as root:

```bash
sudo su && cd
```

```bash
curl -Lo kali git.io/ohmykali-dev && chmod o+x kali && ./kali 
```

### Ansible way

```
apt install ansible -y
```

```
git clone htps://github.com/vansteki/ohmykali
cd ohmykali
cp vars.example.yml vars.yml
```

USB encryption:
```bash
ansible-storybook psrt_encrypt.yml
```
No USB encryption:
```bash
ansible-storybook psrt.yml
```

### 2. Check and enter partition information

You should use `fdisk -l` to check your disk info first.

Find your USB device:
```
Device     Boot   Start     End Sectors  Size Id Type
/dev/sdb1  *         64 7012351 7012288  3.3G 17 Hidden HPFS/NTFS
/dev/sdb2       7012352 7013823    1472  736K  1 FAT12
```

Ansible playbook will ask you to type some info:

```
> ansible-playbook psrt_encrypt.yml

What is your USB device (eg /dev/sda)?: /dev/sdb
What is your USB device new sector (eg /dev/sda3)?: /dev/sdb3
What size do you want to part (eg 7GiB)?: 11GiB
enter your passphrase
enter your passphrase again
```

### 3. Done, reboot

## Config options

You can change Kali Linux ISO download source

```
cp vars.example.yml vars.yml
```

You can also use mirror site, by default, this script use `kali-2021.1`

```
officialISO: https://cdimage.kali.org/kali-2021.1/kali-linux-2021.1-live-amd64.iso
officialMirrorISO: https://mirror.anigil.com/kali-images/kali-2021.1/kali-linux-2021.1-live-amd64.iso
userMirrorISO: https://kali.cs.nctu.edu.tw/kali-images/kali-2021.1/kali-linux-2021.1-live-amd64.iso
```
