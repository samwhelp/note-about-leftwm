

################################################################################
### Head: Model mod_leftwmrc_theme_get
##

mod_leftwmrc_theme_get () {
	#echo "mod_leftwmrc_theme_get"
	#echo "$@"

	# leftwmrc-theme-ctrl get
	# file ~/.config/leftwm/themes/current

	local dir_path=$(LANG=C file $THE_LEFTWMRC_THEME_CURRENT_DIR_PATH | awk -F ' symbolic link to ' '{print $2}')
	local name=$(basename "$dir_path")

	echo $name

}

##
### Tail: Model mod_leftwmrc_theme_get
################################################################################
