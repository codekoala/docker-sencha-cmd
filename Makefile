CMD_VER := 6.2.2
CMD_VER_SHORT := 6

IMG := codekoala/sencha

image: dockerfile
	docker build --tag $(IMG):$(CMD_VER) .
	docker tag $(IMG):$(CMD_VER) $(IMG):$(CMD_VER_SHORT)

dockerfile:
	envsubst < Dockerfile.in > Dockerfile

export CMD_VER
