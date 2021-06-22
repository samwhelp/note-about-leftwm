

################################################################################
### Head: Model mod_leftwmrc_theme_list
##

mod_leftwmrc_theme_list () {
	#echo "mod_leftwmrc_theme_list"
	#echo "$@"

	# leftwmrc-theme-ctrl list

	local name=''
	local dir_path=''

	cd "$THE_LEFTWMRC_THEMES_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_LEFTWMRC_THEMES_DIR_PATH/$name" ## ~/.config/leftwm/themes/demo
		if is_not_leftwmrc_theme_dir "$dir_path"; then ## check ~/.config/leftwm/themes/demo/theme.toml
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_leftwmrc_theme_list
################################################################################
