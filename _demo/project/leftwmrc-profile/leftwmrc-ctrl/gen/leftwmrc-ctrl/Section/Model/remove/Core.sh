

################################################################################
### Head: Model mod_leftwmrc_profile_remove
##

mod_leftwmrc_profile_remove () {

	## $ leftwmrc-ctrl remove demo

	local name="$1"
	#echo $name

	leftwmrc_profile_init_dir

	util_error_echo "cd $THE_LEFTWMRC_PROFILE_DIR_PATH"
	cd "$THE_LEFTWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/leftwmrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.local/share/.leftwmrc-profile/demo
		util_error_echo
		util_error_echo "## Dir not exists: "
		util_error_echo
		util_error_echo "$name"
		util_error_echo
		return 1
	fi

	##mod_leftwmrc_profile_default

	util_error_echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Model mod_leftwmrc_profile_remove
################################################################################
