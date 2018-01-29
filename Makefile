config:
	sh makeconfig

install:
	cp minitodo /usr/local/bin/minitodo
	chmod 777 /usr/local/bin/minitodo

install-config:
	mkdir -p ~/.minitodo
	cp config ~/.minitodo/config

shellcheck:  # You need shellcheck installed
	shellcheck -s sh -e SC2086 -f gcc minitodo
