#!/usr/bin/env bash

set -e


################################################################################
### Head: i3wm_config_install
##
i3wm_config_install () {

	echo
	echo "##"
	echo "## Config: i3wm_config_install"
	echo "##"
	echo

	echo "mkdir -p $HOME/.config/i3"
	mkdir -p "$HOME/.config/i3"

	echo "install -Dm644 ./config/i3/config $HOME/.config/i3/config"
	install -Dm644 "./config/i3/config" "$HOME/.config/i3/config"

	echo "install -Dm755 ./config/i3/autostart $HOME/.config/i3/autostart"
	install -Dm755 "./config/i3/autostart" "$HOME/.config/i3/autostart"


	echo

}
##
### Tail: i3wm_config_install
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	i3wm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
