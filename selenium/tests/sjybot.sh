#!/bin/bash

# go to  and find a fast mirror
ROOT=`dirname $0`
JAR_DIR=/vagrant/vm/jars
CLASSPATH=$JAR_DIR/robotframework-selenium2library-java-1.2.0.3-jar-with-dependencies.jar
CLASSPATH=$CLASSPATH:$JAR_DIR/robotframework-2.7.7.jar

java -cp $CLASSPATH org.robotframework.RobotFramework cnn_home.txt
