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

This is my setup as I'm using arch linux with kde plasma & dwm, this is optional and you can use any distro/wm out there, but these are the steps that you have to follow if you want to replicate my setup.

###Installing plasma first  
`sudo pacman -S plasma-desktop`  
  
### Installing dwm 
Download dwm package from [suckless website](https://dwm.suckless.org), extract it in home directory, (or any other dir).  
Download the patches into the same folder as dwm package  
[Full gaps](https://dwm.suckless.org/patches/fullgaps/)    
[Autostart](https://dwm.suckless.org/patches/autostart/)    
[IPC](https://dwm.suckless.org/patches/ipc/)    
Apply the patches from the terminal by cd into dwm directory, the run the followin command on each patch, leaving ipc to the end.
`patch -p1 < patch-name.diff`  
  
### Configure plasma to run dwm as wm  
Following the steps from [here](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma) using system wide configurations  
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


