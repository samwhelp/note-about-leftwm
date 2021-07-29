

################################################################################
### Head: Model mod_leftwmrc_profile_set
##

mod_leftwmrc_profile_set () {
	#echo "mod_leftwmrc_profile_set"
	#echo "$@"


	## $ leftwmrc-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_LEFTWMRC_PROFILE_DIR_PATH/$name"
	local target_dir_path="$THE_LEFTWMRC_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_leftwmrc_dir "$source_dir_path"; then ## check ~/.config/leftwmrc-profile/demo/leftwm.conf
		util_error_echo
		util_error_echo "## Not Valid Leftwmrc Dir: "
		util_error_echo
		util_error_echo "$source_dir_path"
		util_error_echo
		util_error_echo '## Please Run:'
		util_error_echo
		util_error_echo '# to find valid leftwmrc dir.'
		util_error_echo '$ leftwmrc-ctrl list'
		util_error_echo
		util_error_echo '# to select valid leftwmrc dir.'
		util_error_echo '$ leftwmrc-ctrl fzf'
		util_error_echo
		return 1
	fi

	leftwmrc_check_leftwmrc_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/leftwm is symbolic link
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
### Tail: Model mod_leftwmrc_profile_set
################################################################################
