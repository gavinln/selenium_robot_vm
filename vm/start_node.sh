#!/bin/bash

DIRNAME=`dirname $0`
SERVER_JAR=$DIRNAME/jars/selenium-server-standalone-2.32.0.jar
HUB_URL=http://127.0.0.1:4444/grid/register
NODE_CONFIG=linux_config.json

xvfb-run java -jar $SERVER_JAR -role node -hub $HUB_URL -nodeConfig $NODE_CONFIG
