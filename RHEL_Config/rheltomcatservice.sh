#!/bin/bash
# description: Tomcat Start Stop Restart  
# processname: tomcat  
# chkconfig: 234 20 80
CATALINA_HOME=/home/ovaledge/apache-tomcat-9.0.36
case $1 in  
start)  
sh $CATALINA_HOME/bin/startup.sh  
;;   
stop)     
sh $CATALINA_HOME/bin/shutdown.sh  
;;   
restart)  
sh $CATALINA_HOME/bin/shutdown.sh  
sh $CATALINA_HOME/bin/startup.sh  
;;   
esac      
exit 0 


