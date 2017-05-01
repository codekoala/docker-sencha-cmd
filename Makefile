CMD_VER := 6.2.2
CMD_VER_SHORT := 6

IMG := codekoala/sencha

build:
	./build.sh

export CMD_VER CMD_VER_SHORT IMG
