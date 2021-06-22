

################################################################################
### Head: Model forest
##

mod_forest_install () {

	## https://github.com/lex148/forest

	echo
	## mod_forest_repo_clone "$1" 'https://github.com/lex148/forest.git'
	mod_forest_repo_clone 'forest' 'https://github.com/lex148/forest.git'
	echo
}

mod_forest_repo_clone () {

	## $ leftwmrc-theme-get forest

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='forest'
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
	git clone "$repo_url" "$name"  ## git clone https://github.com/lex148/forest.git forest

	cd "$OLDPWD"

}



##
### Tail: Model forest
################################################################################
