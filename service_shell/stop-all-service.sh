#!/bin/sh

## java env
export JAVA_HOME=/usr/local/java/jdk1.7.0_45
export JRE_HOME=$JAVA_HOME/jre

/home/roncoo/service/capital/service-capital.sh stop
/home/roncoo/service/order/service-order.sh stop
/home/roncoo/service/redpacket/service-redpacket.sh stop

