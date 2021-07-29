

################################################################################
### Head: Sys
##

is_leftwmrc_dir () {

	local dir_path="$1"
	local leftwmrc_file_path="$dir_path/$THE_LEFTWMRC_FILE_NAME" ## ~/.config/leftwmrc-profile/demo/leftwm.conf

	if [ ! -f "$leftwmrc_file_path" ]; then ## check ~/.config/leftwmrc-profile/demo/leftwm.conf
		return 1
	fi

	return 0
}

is_not_leftwmrc_dir () {

	local dir_path="$1"
	local leftwmrc_file_path="$dir_path/$THE_LEFTWMRC_FILE_NAME" ## ~/.config/leftwmrc-profile/demo/leftwm.conf

	if [ -f "$leftwmrc_file_path" ]; then ## check ~/.config/leftwmrc-profile/demo/leftwm.conf
		return 1
	fi

	return 0

}

leftwmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_LEFTWMRC_PROFILE_DIR_PATH/$name"
}


leftwmrc_check_leftwmrc_dir_exists () {

	local leftwmrc_dir_name="$THE_LEFTWMRC_DIR_NAME"
	local leftwmrc_dir_path="$THE_LEFTWMRC_DIR_PATH"

	if ! [ -a "$leftwmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$leftwmrc_dir_path" ]; then ## ~/.config/leftwm is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$leftwmrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${leftwmrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${leftwmrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${leftwmrc_dir_path} ${bak_target_path}"
	cp -a "${leftwmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


leftwmrc_profile_init_dir () {

	if ! [ -d "$THE_LEFTWMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_LEFTWMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_LEFTWMRC_PROFILE_DIR_PATH"
	fi

	return 0
}


leftwmrc_repo_clone () {

	## $ leftwmrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	util_error_echo "mkdir -p $THE_LEFTWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_LEFTWMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_LEFTWMRC_PROFILE_DIR_PATH"
	cd "$THE_LEFTWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/leftwmrc-profile


	if [ -d "$name" ]; then
		util_error_echo
		util_error_echo "## Is Exists:" "$THE_LEFTWMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	util_error_echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/leftwm.git demo

	## $ man cd
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
