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

	echo "./config/i3/bin/maintain-install.sh"
	./config/i3/bin/maintain-install.sh


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
