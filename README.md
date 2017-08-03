# Docker Keep It Simple, S....d

## Overview

A bit of fun playing with "**Docker**" and "**docker-compose**".

Basically we have two conceptual elements:

  * *Application*

  Simple Docker application example with Apache + Tomcat + "Hello world" JSP.

  * *Metrics*

  Simple Docker metric example with Telegraf + Influxdb + Grafana.

  Straight from here (great job Rik ... as always)

  https://github.com/RikV/docker-playground/tree/master/docker-metrics-influx


## Run!

    docker-compose up --build -d

## Grafana

  * Auto provisioning "datasource" (always from RikV)

  ~~~
  curl -XPOST -uadmin:admin \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  "http://localhost:81/api/datasources/" \
  -d @metrics/datasource.json
  ~~~

  * Dashboard example:

  https://grafana.com/dashboards/1150

## Web Services

  * Application: http://127.0.0.1:80
  * Grafana: http://127.0.0.1:81 (admin/admin)
