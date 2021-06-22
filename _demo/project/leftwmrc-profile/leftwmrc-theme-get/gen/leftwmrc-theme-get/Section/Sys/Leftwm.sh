

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


leftwmrc_theme_repo_clone () {

	## $ leftwmrc-theme-get default

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	echo "mkdir -p $THE_LEFTWMRC_THEMES_DIR_PATH"
	mkdir -p "$THE_LEFTWMRC_THEMES_DIR_PATH"

	echo "cd $THE_LEFTWMRC_THEMES_DIR_PATH"
	cd "$THE_LEFTWMRC_THEMES_DIR_PATH" ## cd ~/.config/leftwm/themes


	if [ -d "$name" ]; then
		echo "## Is Exists:" "$THE_LEFTWMRC_THEMES_DIR_PATH/$name"
		return 0;
	fi

	echo "git clone $repo_url $name "
	git clone "$repo_url" "$name"  ## git clone https://github.com/lex148/bumblebee.git bumblebee

	cd "$OLDPWD"

}


##
### Tail: Sys
################################################################################
