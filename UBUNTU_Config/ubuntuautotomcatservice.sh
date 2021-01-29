#!/bin/bash

### BEGIN INIT INFO
# Provides:        tomcat9
# Required-Start:  $network
# Required-Stop:   $network
# Default-Start:   2 3 4 5
# Default-Stop:    0 1 6
# Short-Description: Start/Stop Tomcat server
### END INIT INFO

TOMCAT_HOME=/home/abhilash/apache-tomcat-9.0.36

PATH=/sbin:/bin:/usr/sbin:/usr/bin

start() {
 sh ${TOMCAT_HOME}/bin/startup.sh
}

stop() {
 sh ${TOMCAT_HOME}/bin/shutdown.sh
}

case $1 in
  start|stop) $1;;
  restart) stop; start;;
  *) echo "Run as $0 &lt;start|stop|restart&gt;"; exit 1;;
esac
