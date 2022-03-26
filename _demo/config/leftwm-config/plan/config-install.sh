#!/usr/bin/env bash

set -e


################################################################################
### Head: leftwm_config_install
##
leftwm_config_install () {

	echo
	echo "##"
	echo "## Config: leftwm_config_install"
	echo "##"
	echo

	echo 'TODO:'
	#echo "./config/leftwm/bin/maintain-install.sh"
	#./config/leftwm/bin/maintain-install.sh

	#echo "make -C config/leftwm install"
	#make -C config/leftwm install

	echo

}
##
### Tail: leftwm_config_install
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	leftwm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
