REM starts robot selenium java tests
set ROOT=%~dp0

set PATH=C:\Program Files (x86)\Java\jre7\bin;%PATH%
set JAR_DIR=%ROOT%jars
set CLASSPATH=%JAR_DIR%\robotframework-selenium2library-java-1.2.0.3-jar-with-dependencies.jar
set CLASSPATH=%CLASSPATH%;%JAR_DIR%robotframework-2.7.7.jar

java -cp %CLASSPATH% org.robotframework.RobotFramework cnn_home.txt

