

################################################################################
### Head: Model mod_i3wmrc_profile_list
##



mod_i3wmrc_profile_list () {
	#echo "mod_i3wmrc_profile_list"
	#echo "$@"

	# i3wmrc-ctrl list

	local name=''
	local dir_path=''

	i3wmrc_profile_init_dir

	cd "$THE_I3WMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_I3WMRC_PROFILE_DIR_PATH/$name" ## ~/.local/share/i3wmrc-profile/demo
		if is_not_i3wmrc_dir "$dir_path"; then ## check ~/.local/share/i3wmrc-profile/demo/i3wm.conf
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_i3wmrc_profile_list
################################################################################
