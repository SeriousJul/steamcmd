#!/bin/bash
set -x
mkdir -p /opt/steamcmd \
    && curl -s https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -vxz -C /opt/steamcmd