

################################################################################
### Head: Sys
##

is_i3wmrc_dir () {

	local dir_path="$1"
	local i3wmrc_file_path="$dir_path/$THE_I3WMRC_FILE_NAME" ## ~/.config/i3wmrc-profile/demo/i3wm.conf

	if [ ! -f "$i3wmrc_file_path" ]; then ## check ~/.config/i3wmrc-profile/demo/i3wm.conf
		return 1
	fi

	return 0
}

is_not_i3wmrc_dir () {

	local dir_path="$1"
	local i3wmrc_file_path="$dir_path/$THE_I3WMRC_FILE_NAME" ## ~/.config/i3wmrc-profile/demo/i3wm.conf

	if [ -f "$i3wmrc_file_path" ]; then ## check ~/.config/i3wmrc-profile/demo/i3wm.conf
		return 1
	fi

	return 0

}

i3wmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_I3WMRC_PROFILE_DIR_PATH/$name"
}


i3wmrc_check_i3wmrc_dir_exists () {

	local i3wmrc_dir_name="$THE_I3WMRC_DIR_NAME"
	local i3wmrc_dir_path="$THE_I3WMRC_DIR_PATH"

	if ! [ -a "$i3wmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$i3wmrc_dir_path" ]; then ## ~/.config/i3wm is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$i3wmrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${i3wmrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${i3wmrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${i3wmrc_dir_path} ${bak_target_path}"
	cp -a "${i3wmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


i3wmrc_profile_init_dir () {

	if ! [ -d "$THE_I3WMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_I3WMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_I3WMRC_PROFILE_DIR_PATH"
	fi

	return 0
}


i3wmrc_repo_clone () {

	## $ i3wmrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	util_error_echo "mkdir -p $THE_I3WMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_I3WMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_I3WMRC_PROFILE_DIR_PATH"
	cd "$THE_I3WMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/i3wmrc-profile


	if [ -d "$name" ]; then
		util_error_echo
		util_error_echo "## Is Exists:" "$THE_I3WMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	util_error_echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/i3wm.git demo

	## $ man cd
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
