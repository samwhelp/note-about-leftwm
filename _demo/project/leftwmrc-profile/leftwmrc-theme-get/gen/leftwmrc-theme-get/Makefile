default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make app'
	@echo

.PHONY: help


prepare:
	pamac install php
.PHONY: prepare


app:
	php leftwmrc-theme-get.sh > ../../leftwmrc-theme-get
	chmod 755 ../../leftwmrc-theme-get
.PHONY: app
