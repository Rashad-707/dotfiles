![img](https://github.com/Rashad-707/dotfiles/blob/main/img/dotfiles.png)
### Setup detailes  
▪ **Window Manager** ➙ DWM  
▪ **Terminal** ➙ Alacritty  
▪ **Compositor** ➙ Picom  
▪ **File manager** ➙ Dolphin  
▪ **Browser** ➙ Vivaldi  
▪ **Notification daemon** ➙ Dunst  
▪ **Widgets & Bar** ➙ Eww  
▪ **Menu** ➙ Rofi  
▪ **Editor** ➙ Visual studio code  
▪ **Music player** ➙ Ncmpcpp  

## Installation
This is my setup as I'm using arch linux with kde & dwm, this is optional and you can use any distro/wm out there, but these are the steps that you have to follow if you want to replicate my setup.

### Seting up KDE   
1. Installing plasma and other few packages  
`sudo pacman -S plasma-desktop sdddm xorg networkmanager alacritty dolphin`
2. Enabling services  
`sudo systemctl enable sddm`  
`sudo systemctl start sddm`  
`sudo systemctl enable NetworkManager`  
`sudo systemctl start NetworkManager`  
  
### Installing dwm 
1. Download dwm from [suckless website](https://dwm.suckless.org) & extract it 
2. Download these patches and put them in the same directory
- [Full gaps](https://dwm.suckless.org/patches/fullgaps/)    
- [Autostart](https://dwm.suckless.org/patches/autostart/)    
- [IPC](https://dwm.suckless.org/patches/ipc/)    
3. Apply the patches by `cd` into the directory, the run the following command on each patch, leaving ipc to the end.  
`patch -p1 < patch-name.diff`  
  
### Configure KDE to run with dwm  
Following the steps from [here](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma), using system wide configurations:   
`cd /usr/share/xsessions`  
`sudo cp plasma.desktop plasma-dwm.desktop`  
`vim plasma-dwm.desktop`, modify the file to be like that:  
```
[Desktop Entry]
Type=XSession
Exec=env KDEWM=/usr/local/bin/dwm /usr/bin/startplasma-x11
TryExec=/usr/bin/startplasma-x11
DesktopNames=KDE
Name=Plasma (dwm)
```  



alacritty
cava
dolphin
dunst
feh
kvantum-qt5
mpc
mpd
ncmpcpp
picom-ibhagwan-git
polybar-dwm-module
rofi
sxhkd
visual-studio-code-bin
vivaldi
zsh


