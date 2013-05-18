#!/bin/bash

DIRNAME=`dirname $0`
SERVER_JAR=/vagrant/vm/jars/selenium-server-standalone-2.32.0.jar
java -jar $SERVER_JAR -role hub

