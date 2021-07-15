#!/usr/bin/env bash


################################################################################
### head: Link
##

## * https://github.com/samwhelp/note-about-xsession

##
### tail: Link
################################################################################


################################################################################
### head: Util
##

# is_command_exist () {
#
# 	if command -v "$1" > /dev/null; then
# 		return 0
# 	else
# 		return 1
# 	fi
#
# }

is_command_exist () {

	if [ -x "$(command -v $1)" ]; then
		return 0
	else
		return 1
	fi

}

is_command_not_exist () {

	if [ -x "$(command -v $1)" ]; then
		return 1
	else
		return 0
	fi

}

util_app_start () {

	local cmd="$1"

	# if ! is_command_exist "$cmd"; then
	# 	#echo "## Command Not Exist: $cmd"
	# 	return
	# fi

	if is_command_not_exist "$cmd"; then
		#echo "## Command Not Exist: $cmd"
		return
	fi

	"$cmd" &

}

##
### tail: Util
################################################################################


################################################################################
### Head: Xresources
##


#test -f "$HOME/.Xresources" && xrdb -load "$HOME/.Xresources"
#test -f "$HOME/.Xresources" && xrdb -merge "$HOME/.Xresources"
#/usr/local/bin/xresources-load.sh

#xresources-load.sh


##
### Tail: Xresources
################################################################################


################################################################################
### Head: Network /
##

## network manager applet
#sleep 1 &&
#nm-applet &

## Note: use /etc/xdg/autostart/nm-applet.desktop


app_nm_applet_start () {

	pkill nm-applet

	is_command_exist 'nm-applet' && nm-applet &

}


##
### Tail: Network /
################################################################################


################################################################################
### Head: Network /
##


## blueman-applet (Package: blueman)
#blueman-applet
## Note: use /etc/xdg/autostart/blueman.desktop

app_blueman_applet_start () {

	pkill blueman-applet

	is_command_exist 'blueman-applet' && blueman-applet &

}

##
### Tail: Network /
################################################################################


################################################################################
### Head: Volume / volumeicon
##

## volumeicon (Package: volumeicon-alsa)

app_volumeicon_start () {

	pkill volumeicon

	is_command_exist 'volumeicon' && volumeicon &

}

##
### Tail: Volume / volumeicon
################################################################################


################################################################################
### Head: Volume / mate-volume-control-status-icon
##

## mate-volume-control-status-icon (Package: mate-media)

app_mate_volume_control_status_icon_start () {

	pkill mate-volume-control-status-icon

	is_command_exist 'mate-volume-control-status-icon' && mate-volume-control-status-icon &

}

##
### Tail: Volume / mate-volume-control-status-icon
################################################################################


################################################################################
### Head: Desktop / Wallpaper / feh
##


## move to ~/bin/wallpaper.sh
#wallpaper.sh &

app_feh_start () {

	sys_feh_wallpaper_main

}


sys_feh_wallpaper_default () {

	local wallpaper_file_path

	#wallpaper_file_path="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
	#wallpaper_file_path="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
	wallpaper_file_path="/usr/share/backgrounds/xfce/palm-wave.jpg"
	#wallpaper_file_path="$HOME/Pictures/Wallpaper/bg.jpg"

	pkill feh

	is_command_exist 'feh' && feh --bg-scale "$wallpaper_file_path" &

}

sys_feh_wallpaper_main () {

	local load_last="$HOME/.fehbg"

	if [ -x "$load_last" ]; then
		##echo 1
		$load_last
		return
	fi

	##echo 2
	sys_feh_wallpaper_default
}


##
### Tail: Desktop / Wallpaper / feh
################################################################################


################################################################################
### Head: Compositor / compton
##

app_compton_start () {
	#compton &
	#compton --config ~/.config/compton.conf &
	#compton --config ~/.config/compton/compton.conf &

	#compton --config ~/.config/i3wm/etc/compton/compton.conf &

	pkill compton

	is_command_exist 'compton' && compton &


}

##
### Tail: Compositor / compton
################################################################################


################################################################################
### Head: Compositor / picom
##

app_picom_start () {


	pkill picom

	is_command_exist 'picom' && picom &

}

##
### Tail: Compositor / picom
################################################################################


################################################################################
### Head: Policykit Agent
##

## [policykit-1-gnome]
## $ dpkg -L policykit-1-gnome | grep desktop
## /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop)
## Exec=/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop) | cut -d '=' -f 2
## /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1

#/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &


## [lxqt-policykit]
## $ dpkg -L lxqt-policykit | grep desktop
## /etc/xdg/autostart/lxqt-policykit-agent.desktop
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop)
## Exec=lxqt-policykit-agent
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop) | cut -d '=' -f 2
## lxqt-policykit-agent

#lxqt-policykit-agent &


##
### Tail: Policykit Agent
################################################################################


################################################################################
### Head: Screen Saver
##


## xscreensaver
## /etc/xdg/autostart/xscreensaver.desktop
#/usr/share/xscreensaver/xscreensaver-wrapper.sh -no-splash &


##
### Tail: Screen Saver
################################################################################


################################################################################
### Head: Im / Fcitx
##

## $ dpkg -L fcitx-data | grep fcitx.desktop
## /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' $(dpkg -L fcitx-data | grep fcitx.desktop)
## Exec=fcitx

app_fcitx_start () {

	pkill fcitx

	is_command_exist 'fcitx' && fcitx &

}

##
### Tail: Im / Fcitx
################################################################################


################################################################################
### Head: Tray / stalonetray
##

#i3wm-stalonetray-start.sh &

app_stalonetray_start () {

	is_command_exist 'stalonetray' && stalonetray &

}

##
### Tail: Tray / stalonetray
################################################################################


################################################################################
### Head: Tray / trayer
##

## * https://github.com/sargon/trayer-srg

app_trayer_start () {

	is_command_exist 'i3wm-trayer-start.sh' && i3wm-trayer-start.sh &

}

##
### Tail: Tray / trayer
################################################################################


################################################################################
### Head: Terminal / Sakura
##

app_sakura_start () {

	is_command_exist 'sakura' && sakura -m &

}

##
### Tail: Terminal / Sakura
################################################################################


################################################################################
### Head: Main
##

__test__ () {
	app_sakura_start
}

__main__ () {

## Network
	app_nm_applet_start
	app_blueman_applet_start

## Volumn
	#app_volumeicon_start
	app_mate_volume_control_status_icon_start

## Compositor
	#app_compton_start
	app_picom_start

## Desktop
	app_feh_start

## Im
	app_fcitx_start

## Tray
	#app_stalonetray_start
	app_trayer_start

## Terminal
	#app_sakura_start


}

__main__
##__test__

##
### Tail: Main
################################################################################
