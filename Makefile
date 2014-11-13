#CMD_VER := 5.0.3.324
CMD_VER := 4.0.4.84
IMG := codekoala/sencha

image: cmd-install.run
	sed "s/{CMD_VER}/$(CMD_VER)/" Dockerfile.in > Dockerfile
	docker build -t $(IMG) .
	docker tag $(IMG):latest $(IMG):$(CMD_VER)

cmd-install.run:
	curl -o cmd.run.zip http://cdn.sencha.com/cmd/$(CMD_VER)/SenchaCmd-$(CMD_VER)-linux-x64.run.zip
	unzip -p cmd.run.zip > cmd-install.run
	chmod +x cmd-install.run

clean:
	rm -f cmd.run.zip cmd-install.run
