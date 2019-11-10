#!/bin/sh
[[ -e /ets/system/helloworld.service ]] \
   && systemd status helloworld.service | \
      grep -q '^helloworld start/running, process' \
   && [[ $? -eq 0 ]] \
   && systemd stop helloworld.service || echo "App not started"
