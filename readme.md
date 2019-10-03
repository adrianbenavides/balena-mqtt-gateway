This project is a customized version of [BalenaSense](https://github.com/balena-io-projects/balena-sense) with the difference that this is not attached to any sensor in particular, it just handles incoming MQTT messages and stores them in the database.

This setup is really helpful if you want to work with a bunch of microcontrollers with WiFi, like the ESP8266, each one measuring different metrics in different places within the WiFi network range.

## On first run
You will need to be logged in if you want to manage dashboards. The first time you log in you need to use the default auth credentials, which are `admin` for both user and password. You will be then asked to change the password.

## Resources
* [Customizing the default grafana docker image](https://github.com/grafana/grafana/tree/master/packaging/docker)
* [Latest grafana executable](https://grafana.com/grafana/download?platform=arm)
* [Using mqtt as a Telegraf input](https://www.influxdata.com/integration/mqtt-monitoring/)
* [InfluxDB line protocol format](https://docs.influxdata.com/influxdb/v1.7/write_protocols/line_protocol_tutorial/)
* [More grafana plugins](https://grafana.com/grafana/plugins)

## MQTT example message
+-----------+-+---------+
|measurement| |field_set|
+-----------+-+---------+
`gps lat=41.00102,lng=1.19902,speed=1.45`
