

################################################################################
### Head: Model ground_zero
##

mod_ground_zero_install () {

	## https://github.com/Qwart376/Ground-Zero

	echo
	leftwmrc_theme_repo_clone 'ground_zero' 'https://github.com/Qwart376/Ground-Zero.git'
	echo


	mod_ground_zero_install_fix 'ground_zero'
}

mod_ground_zero_install_fix () {

	local theme_dir_name="$1"

	local theme_dir_path="$THE_LEFTWMRC_THEMES_DIR_PATH/$theme_dir_name"

	local up_file_path="$theme_dir_path/up"
	local down_file_path="$theme_dir_path/down"

	echo "chmod +x $up_file_path"
	chmod +x "$up_file_path"

	echo "chmod +x $down_file_path"
	chmod +x "$down_file_path"

	echo "sed -i 's/^SCRIPTPATH\/down=/\\\$SCRIPTPATH\/down/' $up_file_path"
	sed -i 's/^SCRIPTPATH\/down/$SCRIPTPATH\/down/' "$up_file_path"

}

##
### Tail: Model ground_zero
################################################################################
