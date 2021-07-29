

################################################################################
### Head: Model mod_leftwmrc_profile_list
##



mod_leftwmrc_profile_list () {
	#echo "mod_leftwmrc_profile_list"
	#echo "$@"

	# leftwmrc-ctrl list

	local name=''
	local dir_path=''

	leftwmrc_profile_init_dir

	cd "$THE_LEFTWMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_LEFTWMRC_PROFILE_DIR_PATH/$name" ## ~/.local/share/leftwmrc-profile/demo
		if is_not_leftwmrc_dir "$dir_path"; then ## check ~/.local/share/leftwmrc-profile/demo/leftwm.conf
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_leftwmrc_profile_list
################################################################################
