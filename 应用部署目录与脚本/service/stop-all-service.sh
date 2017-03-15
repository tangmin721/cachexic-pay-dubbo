#!/bin/sh

## java env
export JAVA_HOME=/usr/local/java/jdk1.7.0_45
export JRE_HOME=$JAVA_HOME/jre

/home/roncoo/service/account/service-account.sh stop
/home/roncoo/service/accounting/service-accounting.sh stop
/home/roncoo/service/notify/service-notify.sh stop
/home/roncoo/service/trade/service-trade.sh stop
/home/roncoo/service/user/service-user.sh stop
/home/roncoo/service/message/service-message.sh stop
