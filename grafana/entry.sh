#!/bin/bash

grafana-cli plugins install alexandra-trackmap-panel

/usr/src/app/api.sh &
grafana-server --homepath /usr/share/grafana cfg:default.paths.plugins="/var/lib/grafana/plugins"
