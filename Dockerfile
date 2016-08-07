FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y curl \
	&& apt-get clean

MAINTAINER Julien Antony <jul.antony@gmail.com>

ENV login anonymous
ENV force_install_dir /game
ENV app_update 0

VOLUME /game
CMD /opt/steamcmd/steamcmd.sh +login $login +force_install_dir $force_install_dir +app_update $app_update validate +quit

RUN apt-get update \
    && apt-get install -y lib32gcc1 libstdc++6 \
	&& apt-get clean

ADD install.sh /tmp
RUN /tmp/install.sh
