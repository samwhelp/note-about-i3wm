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
### Head: Tray / trayer
##

## * https://github.com/sargon/trayer-srg

app_trayer_start () {

	pkill trayer

	is_command_exist 'trayer' && \

	trayer						\
		--monitor primary		\
		--edge top				\
		--widthtype pixel		\
		--width 200				\
		--heighttype pixel		\
		--height 20				\
		--align right			\
		--margin 40				\
		--transparent true		\
		--alpha 0				\
		--tint 0x333333			\
		--iconspacing 4			\
		--distance 3 &

}

##
### Tail: Tray / trayer
################################################################################


################################################################################
### Head: Main
##

__main__ () {

## Tray
	app_trayer_start

}

__main__


##
### Tail: Main
################################################################################
