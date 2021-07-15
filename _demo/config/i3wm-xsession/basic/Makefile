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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo

.PHONY: help


install:
	sudo install -Dm644 ./i3wm-session.desktop /usr/share/xsessions/i3wm-session.desktop
	sudo install -Dm755 ./i3wm-session.sh /usr/local/bin/i3wm-session.sh
.PHONY: install


remove:
	sudo rm -f /usr/share/xsessions/i3wm-session.desktop
	sudo rm -f /usr/local/bin/i3wm-session.sh
.PHONY: remove
