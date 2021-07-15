#!/usr/bin/env bash


################################################################################
### Head: Link
##

## * https://github.com/samwhelp/note-about-xsession

##
### Tail: Link
################################################################################


################################################################################
### Head: Path
##

PATH="$HOME/.config/i3wm-session/bin:$PATH"
##export PATH="$HOME/.config/i3wm-session/bin:$PATH"
#PATH="$HOME/.config/i3wm/bin:$PATH"
##export PATH="$HOME/.config/i3wm/bin:$PATH"

##
### Tail: Path
################################################################################


################################################################################
### Head: Autostart
##

i3wm-session-autostart.sh

##
### Tail: Autostart
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
