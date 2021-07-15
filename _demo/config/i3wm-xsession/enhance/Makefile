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
	mkdir -p ~/.config/i3wm-session/bin
	install -Dm755 ./i3wm-session-autostart.sh ~/.config/i3wm-session/bin/i3wm-session-autostart.sh
	install -Dm755 ./i3wm-trayer-start.sh ~/.config/i3wm-session/bin/i3wm-trayer-start.sh
	install -Dm755 ./i3wm-trayer-stop.sh ~/.config/i3wm-session/bin/i3wm-trayer-stop.sh
.PHONY: install


remove:
	sudo rm -f /usr/share/xsessions/i3wm-session.desktop
	sudo rm -f /usr/local/bin/i3wm-session.sh
	rm -f ~/.config/i3wm-session/bin/i3wm-session-autostart.sh
	rm -f ~/.config/i3wm-session/bin/i3wm-trayer-start.sh
	rm -f ~/.config/i3wm-session/bin/i3wm-trayer-stop.sh
.PHONY: remove
