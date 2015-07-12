CMD_VER := 6.0.0.202
CMD_VER_SHORT := 6

IMG := codekoala/sencha

image: dockerfile
	docker build -t $(IMG):$(CMD_VER) .
	docker tag -f $(IMG):$(CMD_VER) $(IMG):$(CMD_VER_SHORT)

dockerfile:
	sed "s/{CMD_VER}/$(CMD_VER)/g" Dockerfile.in > Dockerfile
