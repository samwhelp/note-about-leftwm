

################################################################################
### Head: Model mod_leftwmrc_profile_get
##

mod_leftwmrc_profile_get () {

	#echo "mod_leftwmrc_profile_get"
	#echo "$@"

	# leftwmrc-ctrl get

	local target_path="$THE_LEFTWMRC_DIR_PATH" ## ~/.config/leftwm
	local dir_path="$(LANG=C file "$target_path" | awk -F ' symbolic link to ' '{print $2}')"
	local name="$(basename "$dir_path")"

	echo $name

}

##
### Tail: Model mod_leftwmrc_profile_get
################################################################################
