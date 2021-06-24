

################################################################################
### Head: Sys
##

is_leftwmrc_theme_dir () {
	local dir_path="$1"
	local leftwmrc_theme_file_path="$dir_path/up" ## ~/.config/leftwm/themes/demo/up

	if [ ! -f "$leftwmrc_theme_file_path" ]; then ## check ~/.config/leftwm/themes/demo/up
		return 1
	fi

	return 0
}

is_not_leftwmrc_theme_dir () {
	local dir_path="$1"
	local leftwmrc_theme_file_path="$dir_path/up" ## ~/.config/leftwm/themes/demo/up

	if [ -f "$leftwmrc_theme_file_path" ]; then ## check ~/.config/leftwm/themes/demo/up
		return 1
	fi

	return 0
}

leftwmrc_theme_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_LEFTWMRC_THEMES_DIR_PATH/$name"
}


leftwmrc_check_theme_dir_exists () {

	echo 'Todo: leftwmrc_check_theme_dir_exists'
}


##
### Tail: Sys
################################################################################
