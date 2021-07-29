

################################################################################
### Head: Model leftwmrc_profile_install
##

leftwmrc_profile_install () {

	## $ leftwmrc-ctrl install demo https://github.com/samwhelp/note-about-leftwm.git

	local name="$1"
	local repo_url="$2"

	util_error_echo
	leftwmrc_repo_clone "$name" "$repo_url"
	util_error_echo

}

##
### Tail: Model leftwmrc_profile_install
################################################################################
