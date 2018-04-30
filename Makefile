.PHONY: all build clean install uninstall

all: build

build:
	mkdir -p ./build
	npm run build
	chmod 755 ./build/fuck

clean:
	rm -rf build

install:
	mkdir -p /opt/fuck
	chown root:root ./build/fuck
	mv ./build/fuck /opt/fuck
	ln -s /opt/fuck/fuck /usr/bin/fuck

uninstall:
	unlink /usr/bin/fuck
	rm -rf /opt/fuck
