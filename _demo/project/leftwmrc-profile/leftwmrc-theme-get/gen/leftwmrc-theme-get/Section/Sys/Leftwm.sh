

################################################################################
### Head: Sys
##

is_leftwmrc_theme_dir () {
	local dir_path="$1"
	local leftwmrc_theme_file_path="$dir_path/theme.toml" ## ~/.config/leftwm/themes/demo/theme.toml

	if [ ! -f "$leftwmrc_theme_file_path" ]; then ## check ~/.config/leftwm/themes/demo/theme.toml
		return 1
	fi

	return 0
}

is_not_leftwmrc_theme_dir () {
	local dir_path="$1"
	local leftwmrc_theme_file_path="$dir_path/theme.toml" ## ~/.config/leftwm/themes/demo/theme.toml

	if [ -f "$leftwmrc_theme_file_path" ]; then ## check ~/.config/leftwm/themes/demo/theme.toml
		return 1
	fi

	return 0
}

leftwmrc_theme_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_LEFTWMRC_THEMES_DIR_PATH/$name"
}





##
### Tail: Sys
################################################################################
