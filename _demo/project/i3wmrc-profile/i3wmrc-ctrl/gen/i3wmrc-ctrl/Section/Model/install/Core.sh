

################################################################################
### Head: Model i3wmrc_profile_install
##

i3wmrc_profile_install () {

	## $ i3wmrc-ctrl install demo https://github.com/samwhelp/note-about-i3wm.git

	local name="$1"
	local repo_url="$2"

	util_error_echo
	i3wmrc_repo_clone "$name" "$repo_url"
	util_error_echo

}

##
### Tail: Model i3wmrc_profile_install
################################################################################
