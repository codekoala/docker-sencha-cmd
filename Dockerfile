FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed unzip \
        fontconfig freetype2 libcups \
        ttf-dejavu jre7-openjdk

ENTRYPOINT ["/opt/Sencha/Cmd/6.0.2.14/sencha"]

RUN curl -o /cmd.run.zip http://cdn.sencha.com/cmd/6.0.2.14/SenchaCmd-6.0.2.14-linux-amd64.sh.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run -q -dir /opt/Sencha/Cmd/6.0.2.14 && \
    rm /cmd-install.run /cmd.run.zip
