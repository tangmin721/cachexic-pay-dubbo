#!/bin/sh

## java env
export JAVA_HOME=/usr/local/java/jdk1.7.0_45
export JRE_HOME=$JAVA_HOME/jre

/home/roncoo/service/message/service-message.sh start
sleep 5
/home/roncoo/service/account/service-account.sh start
sleep 5
/home/roncoo/service/accounting/service-accounting.sh start
sleep 5
/home/roncoo/service/notify/service-notify.sh start
sleep 5
/home/roncoo/service/trade/service-trade.sh start
sleep 5
/home/roncoo/service/user/service-user.sh start
