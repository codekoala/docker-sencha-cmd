CMD_VER := 4.0.4.84
CMD_VER_SHORT := 4

IMG := codekoala/sencha

image: dockerfile
	docker build -t $(IMG):$(CMD_VER) .
	docker tag $(IMG):$(CMD_VER) $(IMG):$(CMD_VER_SHORT)

dockerfile:
	sed "s/{CMD_VER}/$(CMD_VER)/g" Dockerfile.in > Dockerfile
