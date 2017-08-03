#!/bin/sh
set -e

# Remove pre-existing apps
for i in docs examples manager host-manager; do
  rm -rf /usr/local/tomcat/webapps/${i}
done

#rm -rf /usr/local/tomcat/webapps/*

# Fix TZ container problems
TZ='Europe/Rome'
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

exec catalina.sh run
