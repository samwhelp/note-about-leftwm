

################################################################################
### Head: Model leftwmrc_theme_install
##

mod_leftwmrc_theme_install () {

	## $ leftwmrc-theme-ctrl install demo https://github.com/lex148/forest.git

	local name="$1"
	local repo_url="$2"

	echo "mkdir -p $THE_LEFTWMRC_THEMES_DIR_PATH"
	mkdir -p "$THE_LEFTWMRC_THEMES_DIR_PATH"

	echo "cd $THE_LEFTWMRC_THEMES_DIR_PATH"
	cd "$THE_LEFTWMRC_THEMES_DIR_PATH" ## cd ~/.confg/leftwm/themes


	echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone https://github.com/lex148/forest.git demo

	cd "$OLDPWD"

}

##
### Tail: Model leftwmrc_theme_install
################################################################################
