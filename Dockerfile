FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed unzip \
        fontconfig freetype2 libcups \
        ttf-dejavu jre7-openjdk

ENTRYPOINT ["/opt/Sencha/Cmd/6.0.0.202/sencha"]

RUN curl -o /cmd.run.zip https://extjs.cachefly.net/cmd/6.0.0.202/no-jre/SenchaCmd-6.0.0.202-linux-amd64.sh.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run -q --prefix /opt && \
    rm /cmd-install.run /cmd.run.zip
