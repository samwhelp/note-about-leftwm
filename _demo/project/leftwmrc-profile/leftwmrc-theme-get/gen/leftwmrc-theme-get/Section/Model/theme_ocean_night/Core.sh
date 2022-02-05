

################################################################################
### Head: Model ocean_night
##

mod_ocean_night_install () {

	## https://github.com/TheRoniOne/ocean-night

	echo
	leftwmrc_theme_repo_clone 'ocean_night' 'https://github.com/TheRoniOne/ocean-night.git'
	echo


	mod_ocean_night_install_fix 'ocean_night'
}

mod_ocean_night_install_fix () {

	local theme_dir_name="$1"

	local theme_dir_path="$THE_LEFTWMRC_THEMES_DIR_PATH/$theme_dir_name"

	local up_file_path="$theme_dir_path/up"
	local down_file_path="$theme_dir_path/down"

	echo "chmod 755 $up_file_path"
	chmod 755 "$up_file_path"

	echo "chmod 755 $down_file_path"
	chmod 755 "$down_file_path"

}

##
### Tail: Model ocean_night
################################################################################
