

################################################################################
### Head: Model coffee
##

mod_coffee_install () {

	## https://github.com/lex148/leftwm-coffee

	echo
	leftwmrc_theme_repo_clone 'coffee' 'https://github.com/lex148/leftwm-coffee.git'
	echo


	mod_coffee_install_fix 'coffee'
}

mod_coffee_install_fix () {

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
### Tail: Model coffee
################################################################################
