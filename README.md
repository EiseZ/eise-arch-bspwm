# Dotfiles

## Arch Intallation

1. Download a fresh copy of arch linux and boot from it.

2. Select "Boot Arch Linux (x86_64)"

3. Run:

   ```bash
   ping google.com
   ```

   If this fails, try to connect via LAN, or search on the internet on how to fix this.

4. Run:

   ```bash
   timedatectl set-ntp true
   ```

5. Run:

   ```bash
   lsblk
   ```

   And remember the name of the drive you want to install Arch Linux on.

6. Run:

   ```bash
   cfdisk /dev/<drive name>
   ```

7. Select: "dos" if your drive is smaller then 2TB. Else, select: "gpt".

8. Create a new primary partition of 128M.

9. Give the partition you just created the boot flag, to do this you press "b".

10. Create a new primary partition with there rest of the avilable space.

11. Write the changes and quit cfdisk.

12. Run:

    ```bash
    mkfs.ext4 /dev/<drive name>1
    ```

13. Run:

    ```bash
    mkfs.ext4 /dev/<drive name>2
    ```

14. Run:

    ```bash
    mount /dev/sda2 /mnt
    ```

15. Run:

    ```bash
    mkdir /mnt/boot
    ```

16. Run:

    ```bash
    mount /dev/sda1 /mnt/boot
    ```

17. Run:

    ```bash
    pacstrap /mnt base base-devel linux linux-firmware vim
    ```

18. Run:

    ```bash
    genfstab /mnt
    ```

19. Run:

    ```bash
    genfstab -U /mnt >> /mnt/etc/fstab
    ```

20. Run:

    ```bash
    arch-chroot /mnt /bin/bash
    ```

21. Run:

    ```bash
    pacman -S networkmanager grub
    ```

22. Run:

    ```bash
    systemctl enable NetworkManager
    ```

23. Run:

    ```bash
    grub-install /dev/<drive name>
    ```

24. Run:

    ```bash
    grub-mkconfig -o /boot/grub/grub.cfg
    ```

25. Run:

    ```bash
    passwd
    ```
    And then type the password you want the root user to have. And retype it.

26. Run:

    ```bash
    vim /etc/locale.gen
    ```

27. Remove the # from the lines: "en_US.UTF8 UTF8" and "en_US ISO_8859-1". And write quit. Search on a vim tutorial if you don't know how to do this.

28. Run:

    ```bash
    locale-gen
    ```

29. Run:

    ```bash
    vim /etc/locale.conf
    ```
    And add the line: "LANG=en_US.UTF-8"

30. Run:

    ```bash
    vim /etc/hostname
    ```
    And type the name you want the system to have.

31. Run:

    ```bash
    ln -sf /usr/share/zoneinfo/<Time zone name>/<City (maybe not nessecary)> /etc/localtime
    ```

32. Run:

    ```bash
    exit
    ```

33. Run:

    ```bash
    umount -R /mnt
    ```

34. Run:

    ```bash
    reboot
    ```
    And you're done! Yay!

## Packages *(in order)*
* networkmanager *(already installed)*
* grub *(already installed)*
* git
* leftwm (aur)
* xorg
* *xorg-server*
* xterm
* xorg-xinit
* xf86-video-fbdev
* picom
* rofi
* paru (github)
* polybar (aur)
* gucharmap
* dkms (prob. only for vbox)
* virtualbox-guest-iso (only for vbox)
* alacritty
* wildmidi
* timidity
* firefox
* pcmanfm
* sl
* nitrogen
* siji (font) (git)
* fish
* lolcat
* cmatrix

## Vim plugins
* vundle
* NERDTree
* lightline
* onedark

## Fonts
* Roboto
* NotoColorEmoji

## Links
* 

## Licence

[MIT](https://choosealicense.com/licenses/mit/)
