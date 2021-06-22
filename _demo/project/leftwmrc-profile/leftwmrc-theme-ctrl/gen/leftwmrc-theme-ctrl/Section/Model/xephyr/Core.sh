

################################################################################
### Head: Model xephyr
##

## Original Script
## https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh

## Arch Wiki / Xephyr
## https://wiki.archlinux.org/index.php/Xephyr

mod_xephyr () {
	#echo "mod_xephyr"
	#echo "$@"

if ! is_command_exist 'Xephyr'; then

cat << EOF

## Need: Xephyr

	* https://archlinux.org/packages/extra/x86_64/xorg-server-xephyr/

	$ pamac install xorg-server-xephyr

EOF
	return 1
fi

mod_xephyr_run_leftwm "$1"

}


mod_xephyr_run_leftwm () {

	## screen_size
	local screen_size="1280x720"


	if [ "none$1" != "none" ]; then
		screen_size="$1"
	fi

	## run Xephyr
	echo "Xephyr :100 -ac -screen $screen_size &"
	#Xephyr :100 -ac -screen 1280x720 &
	Xephyr :100 -ac -screen "$screen_size" &
	XEPHYR_PID=$!
	sleep 0.5

	## run leftwm
	echo "DISPLAY=:100 leftwm"
	DISPLAY=:100 leftwm


	## make sure kill Xephyr
	kill ${XEPHYR_PID}

}



##
### Tail: Model xephyr
################################################################################
