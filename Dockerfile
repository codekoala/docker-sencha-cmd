FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

ENTRYPOINT ["/opt/Sencha/Cmd/4.0.4.84/sencha"]

RUN pacman -Sy --noconfirm --needed \
        fontconfig freetype2 libcups \
        jre7-openjdk ruby ruby-compass

ADD cmd-install.run /
RUN /cmd-install.run --mode unattended --prefix /opt && \
    rm /cmd-install.run
