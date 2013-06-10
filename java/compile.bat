set DIRNAME=%~dp0

set PATH=c:\Program Files (x86)\Java\jdk1.6.0_32\bin;%PATH%
set JAR_DIR=%DIRNAME%..\vm\jars
REM set CLASSPATH=.;%JAR_DIR%\selenium-server-standalone-2.32.0.jar
set CLASSPATH=.;%JAR_DIR%\selenium-server-2.33.0.jar;%JAR_DIR%\guava-14.0.jar;%JAR_DIR%\httpcore-4.2.1.jar;%JAR_DIR%\httpclient-4.2.1.jar;%JAR_DIR%\commons-logging-1.1.1.jar;%JAR_DIR%\json-20080701.jar

javac -cp %CLASSPATH% SeleniumTest.java
