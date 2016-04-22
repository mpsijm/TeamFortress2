FROM gameservers/steamcmd
MAINTAINER Jason Rivers <docker@jasonrivers.co.uk>

ENV USE_SRCDS true
ENV APPID=232250
ENV APPDIR=/home/steamsrv/tf2
ENV APP_SERVER_PORT 27015
ENV APP_GAME_NAME tf
ENV APP_SERVER_MAXPLAYERS 24
ENV APP_SERVER_MAP ctf_2fort
ENV APP_SERVER_NAME Team Fortress 2 Dedicated Server
ENV APP_SERVER_CONTACT user@example.com
ENV APP_SERVER_REGION -1

RUN mkdir -p /home/steamsrv/.steam/sdk32/              && \
    ln -s /home/steamsrv/steamcmd/linux32/steamclient.so /home/steamsrv/.steam/sdk32/steamclient.so


EXPOSE ${APP_SERVER_PORT}
EXPOSE ${APP_SERVER_PORT}/udp

USER steamsrv

CMD /scripts/StartServer
