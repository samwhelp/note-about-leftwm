

################################################################################
### Head: Model mod_leftwmrc_theme_remove
##

mod_leftwmrc_theme_remove () {

	## $ leftwmrc-theme-ctrl remove dracula_rounded

	local name="$1"
	#echo $name

	echo "cd $THE_LEFTWMRC_THEMES_DIR_PATH"
	cd "$THE_LEFTWMRC_THEMES_DIR_PATH" ## cd ~/.config/leftwm/themes

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.config/leftwm/themes/demo
		echo "Dir not exists: $name"
		return 1
	fi

	##mod_leftwmrc_theme_default

	echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	cd "$OLDPWD"

}

##
### Tail: Model mod_leftwmrc_theme_remove
################################################################################
