

################################################################################
### Head: Model mod_i3wmrc_profile_get
##

mod_i3wmrc_profile_get () {

	#echo "mod_i3wmrc_profile_get"
	#echo "$@"

	# i3wmrc-ctrl get

	local target_path="$THE_I3WMRC_DIR_PATH" ## ~/.config/i3wm
	local dir_path="$(LANG=C file "$target_path" | awk -F ' symbolic link to ' '{print $2}')"
	local name="$(basename "$dir_path")"

	echo $name

}

##
### Tail: Model mod_i3wmrc_profile_get
################################################################################
