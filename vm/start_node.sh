#!/bin/bash

DIRNAME=`dirname $0`
SERVER_JAR=/vagrant/vm/selenium/selenium-server-standalone-2.32.0.jar
java -jar $SERVER_JAR -role node -hub http://localhost:4444/grid/register
