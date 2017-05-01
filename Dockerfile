FROM alpine:3.5
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN apk update && \
    apk add curl unzip fontconfig freetype cups-libs ttf-dejavu openjdk8-jre

RUN curl -Lo /cmd.run.zip http://cdn.sencha.com/cmd/6.2.2/no-jre/SenchaCmd-6.2.2-linux-amd64.sh.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    INSTALL4J_ADD_VM_PARAMS="-Djava.awt.headless=true" /cmd-install.run -q -dir /opt/Sencha/Cmd/6.2.2 && \
    install -dm777 -o root -g root /opt/Sencha/Cmd/repo && \
    rm /cmd-install.run /cmd.run.zip

ENTRYPOINT ["/opt/Sencha/Cmd/6.2.2/sencha"]
