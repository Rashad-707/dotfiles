#!/usr/bin/env sh
pkill plasmashell&
#feh --bg-center /ArchDisk/Pictures/wall-my-edit.jpg &
feh --bg-fill /home/rashad/.dwm/rhombuses-4k-geometric-wallpaper.png
sxhkd &
picom --backend glx --experimental-backends -bc &
/usr/bin/dunst &
$HOME/.config/polybar/launch.sh &
#LD_PRELOAD=/ArchDisk/Downloads/spotifywm-master/spotifywm-master/ewwwm.so ~/eww/target/release/
$HOME/.bin/loadEww &
xmodmap $HOME/.Xmodmap &
