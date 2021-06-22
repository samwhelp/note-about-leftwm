

################################################################################
### Head: Model mod_leftwmrc_theme_set
##

mod_leftwmrc_theme_set () {
	#echo "mod_leftwmrc_theme_set"
	#echo "$@"


	## $ leftwmrc-theme-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_LEFTWMRC_THEMES_DIR_PATH/$name"
	local target_dir_path="$THE_LEFTWMRC_THEME_CURRENT_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_leftwmrc_theme_dir "$source_dir_path"; then ## check ~/.config/leftwm/themes/demo
		echo "Not valid leftwmrc_theme dir: $source_dir_path"
		echo
		echo 'Please run:'
		echo '	$ leftwmrc-theme-ctrl list'
		echo 'to find valid leftwmrc_theme dir.'
		return 1
	fi

	leftwmrc_check_theme_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/leftwm/themes/demo is symbolic link
		echo
		echo rm -f "$target_dir_path"
		rm -f "$target_dir_path"
	else
		echo
		echo rm -rf "$target_dir_path"
		rm -rf "$target_dir_path"
	fi




	echo
	echo ln -sf "$source_dir_path" "$target_dir_path"
	ln -sf "$source_dir_path" "$target_dir_path"


	echo
	file "$target_dir_path"

}


##
### Tail: Model mod_leftwmrc_theme_set
################################################################################
