# post_arch_installation

Documentation for the installation of the Arch Linux on a HP Pavilion DV6 laptop.

# Installations tips

1. change keyboard layout during the installation - `loadkeys es`.
2. change the region of during the installation - `timedatectl set-timezone "Europe/Madrid"`.
3. Partition the disk with cfdisk.
4. Before install update the mirrors - reflector `--verbose --latest 10 --country Spain --country France --protocol https --sort rate --save /etc/pacman.d/mirrorlist`.
5. After all pases has done, install grub.
6. Create a hostname.

# User and groups

1. `useradd -m <username>`
2. `passwd <username>`
3. `usermod -aG wheel,audio,video,optical,storage <username>`
4. `pacman -S sudo`
5. check user groups - `groups <username>`
6. `visudo` uncomment line `wheel ALL=(ALL) ALL`

# Internet

- Install dhcpcd and enable it -- `systemctl enable dhcpdcd`.
- Install the drivers of WIFI (broadcom-wl).
- Activate - `sudo wpa_supplicant -B -i wlo1 /etc/wpa_supplicant/wpa_supplicant.conf`.

# Graphic card

- Install the AMD Radeon driver - `pacman -S mesa` 

# Desktop

- Install xorg

For the screen brightness install `light`

# Fonts

`pacman -S ttf-dejavu ttf-liberation ttf-droid ttf-ubuntu-font-family noto-fonts`

# NTFS 

For mounting NTFS partitions like usb or external disk - `pacman -S ntfs-3g`.
For mounting -> `sudo mount /dev/sdb1/ /mnt/usbStick` check the first path with`lsblk` and create the directory for the second.
For unmount  -> `sudo umount /mnt/usbStick`
