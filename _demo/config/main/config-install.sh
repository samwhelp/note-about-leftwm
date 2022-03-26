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

	echo "mkdir -p $HOME/.config/leftwm"
	mkdir -p "$HOME/.config/leftwm"

	echo "install -Dm644 ./config/leftwm/config.toml $HOME/.config/leftwm/config.toml"
	install -Dm644 "./config/leftwm/config.toml" "$HOME/.config/leftwm/config.toml"

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
