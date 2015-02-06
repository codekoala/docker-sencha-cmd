CMD_VER := 5.1.1.39
CMD_VER_SHORT := 5

IMG := codekoala/sencha

image: dockerfile
	docker build -t $(IMG):$(CMD_VER) .
	docker tag -f $(IMG):$(CMD_VER) $(IMG):$(CMD_VER_SHORT)

dockerfile:
	sed "s/{CMD_VER}/$(CMD_VER)/g" Dockerfile.in > Dockerfile
