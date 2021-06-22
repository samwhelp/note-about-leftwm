

################################################################################
### Head: Model red_moon
##

mod_red_moon_install () {

	## https://github.com/Qwart376/Red-Moon

	echo
	leftwmrc_theme_repo_clone 'red_moon' 'https://github.com/Qwart376/Red-Moon.git'
	echo


	mod_red_moon_install_fix 'red_moon'
}

mod_red_moon_install_fix () {

	local theme_dir_name="$1"

	local theme_dir_path="$THE_LEFTWMRC_THEMES_DIR_PATH/$theme_dir_name"

	local up_file_path="$theme_dir_path/up"
	local down_file_path="$theme_dir_path/down"

	echo "chmod +x $up_file_path"
	chmod u+x "$up_file_path"

	echo "chmod +x $down_file_path"
	chmod +x "$down_file_path"

	echo "sed -i 's/^SCRIPTPATH\/down=/\\\$SCRIPTPATH\/down/' $up_file_path"
	sed -i 's/^SCRIPTPATH\/down/$SCRIPTPATH\/down/' "$up_file_path"

}

##
### Tail: Model red_moon
################################################################################
