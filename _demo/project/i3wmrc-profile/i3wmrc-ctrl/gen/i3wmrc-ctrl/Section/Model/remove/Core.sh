

################################################################################
### Head: Model mod_i3wmrc_profile_remove
##

mod_i3wmrc_profile_remove () {

	## $ i3wmrc-ctrl remove demo

	local name="$1"
	#echo $name

	i3wmrc_profile_init_dir

	util_error_echo "cd $THE_I3WMRC_PROFILE_DIR_PATH"
	cd "$THE_I3WMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/i3wmrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.local/share/.i3wmrc-profile/demo
		util_error_echo
		util_error_echo "## Dir not exists: "
		util_error_echo
		util_error_echo "$name"
		util_error_echo
		return 1
	fi

	##mod_i3wmrc_profile_default

	util_error_echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Model mod_i3wmrc_profile_remove
################################################################################
