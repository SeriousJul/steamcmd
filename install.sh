#!/bin/bash
set -x
apt-get update \
    && apt-get install -y curl lib32gcc1 libstdc++6 \
	&& apt-get clean \
	&& mkdir -p /opt/steamcmd \
    && curl -s https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -vxz -C /opt/steamcmd