#!/bin/bash

grafana-cli --pluginsDir "/var/lib/grafana/plugins" plugins install alexandra-trackmap-panel

/usr/src/app/api.sh &
grafana-server -homepath /usr/share/grafana
