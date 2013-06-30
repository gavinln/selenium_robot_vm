#!/bin/bash

# go to  and find a fast mirror
DIRNAME=`dirname $0`
JAR_DIR=/vagrant/vm/jars
PIP_DIR=$DIRNAME/pip_download
CLASSPATH=$JAR_DIR/robotframework-selenium2library-java-1.2.0.3-jar-with-dependencies.jar
#CLASSPATH=$CLASSPATH:$JAR_DIR/robotframework-2.7.7.jar

T1=$(date +%s)

java -cp $CLASSPATH org.robotframework.RobotFramework $DIRNAME/cnn_home.txt
#java -cp $CLASSPATH org.python.util.jython $DIRNAME/sjybot_cmd.py

T2=$(date +%s)
echo $(expr $T2 - $T1)


