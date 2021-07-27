

################################################################################
### Head: Model mod_i3wmrc_profile_set
##

mod_i3wmrc_profile_set () {
	#echo "mod_i3wmrc_profile_set"
	#echo "$@"


	## $ i3wmrc-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_I3WMRC_PROFILE_DIR_PATH/$name"
	local target_dir_path="$THE_I3WMRC_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_i3wmrc_dir "$source_dir_path"; then ## check ~/.config/i3wmrc-profile/demo/i3wm.conf
		util_error_echo
		util_error_echo "## Not Valid I3wmrc Dir: "
		util_error_echo
		util_error_echo "$source_dir_path"
		util_error_echo
		util_error_echo '## Please Run:'
		util_error_echo
		util_error_echo '# to find valid i3wmrc dir.'
		util_error_echo '$ i3wmrc-ctrl list'
		util_error_echo
		util_error_echo '# to select valid i3wmrc dir.'
		util_error_echo '$ i3wmrc-ctrl fzf'
		util_error_echo
		return 1
	fi

	i3wmrc_check_i3wmrc_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/i3wm is symbolic link
		util_error_echo
		util_error_echo "rm -f $target_dir_path"
		rm -f "$target_dir_path"
	else
		util_error_echo
		util_error_echo "rm -rf $target_dir_path"
		rm -rf "$target_dir_path"
	fi


	util_error_echo
	util_error_echo "ln -sf $source_dir_path $target_dir_path"
	ln -sf "$source_dir_path" "$target_dir_path"


	util_error_echo
	util_error_echo "file $target_dir_path"
	file "$target_dir_path"

}


##
### Tail: Model mod_i3wmrc_profile_set
################################################################################
