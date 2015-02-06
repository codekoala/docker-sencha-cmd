FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed unzip \
        fontconfig freetype2 libcups \
        jre7-openjdk ruby ruby-compass

ENTRYPOINT ["/opt/Sencha/Cmd/5.1.1.39/sencha"]

RUN curl -o /cmd.run.zip http://cdn.sencha.com/cmd/5.1.1.39/SenchaCmd-5.1.1.39-linux-x64.run.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run --mode unattended --prefix /opt && \
    rm /cmd-install.run /cmd.run.zip
