#!/bin/bash

/usr/src/app/api.sh

grafana-cli plugins install alexandra-trackmap-panel
grafana-cli plugins install pr0ps-trackmap-panel

grafana-server                                              \
    --homepath /usr/share/grafana                           \
    --packaging=docker                                      \
    "$@"                                                    \
    cfg:default.paths.plugins="/var/lib/grafana/plugins"
