#!/bin/sh


################################################################################
### Head: Manual
##



##
### Tail: Manual
################################################################################


################################################################################
### Head: Desktop
##


## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/xfce/palm-wave.jpg"
feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &


##
### Tail: Desktop
################################################################################


################################################################################
### Head: Compositor
##

## picom

picom &

##
### Tail: Compositor
################################################################################


################################################################################
### Head: Fcitx
##

## $ dpkg -L fcitx-data | grep fcitx.desktop
## /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' $(dpkg -L fcitx-data | grep fcitx.desktop)
## Exec=fcitx

fcitx &

##
### Tail: Fcitx
################################################################################


################################################################################
### Head: Terminal
##

## sakura
#sakura -m &

##
### Tail: Terminal
################################################################################


################################################################################
### Head: Window Manager
##

# $ LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 locale
# $ LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 locale

#LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 exec i3wm
#LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 exec i3wm

exec i3

##
### Tail: Window Manager
################################################################################
