config:
	sh makeconfig

install:
	cp minitodo /usr/local/bin/minitodo
	chmod 777 /usr/local/bin/minitodo

install-config:
	mkdir -p ~/.minitodo
	cp config ~/.minitodo/config
