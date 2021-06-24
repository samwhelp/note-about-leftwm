

################################################################################
### Head: Model leftwmrc_theme_install
##

mod_leftwmrc_theme_install () {

	## $ leftwmrc-theme-ctrl install dracula_rounded https://github.com/AethanFoot/leftwm-theme-dracula-rounded.git

	local name="$1"
	local repo_url="$2"

	echo "mkdir -p $THE_LEFTWMRC_THEMES_DIR_PATH"
	mkdir -p "$THE_LEFTWMRC_THEMES_DIR_PATH"

	echo "cd $THE_LEFTWMRC_THEMES_DIR_PATH"
	cd "$THE_LEFTWMRC_THEMES_DIR_PATH" ## cd ~/.confg/leftwm/themes


	echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone https://github.com/AethanFoot/leftwm-theme-dracula-rounded.git dracula_rounded

	cd "$OLDPWD"

}

##
### Tail: Model leftwmrc_theme_install
################################################################################
