set ROOT=%~dp0

set PATH=C:\Program Files (x86)\Java\jre7\bin;%PATH%
java -jar %ROOT%jars\selenium-server-standalone-2.32.0.jar -role hub

set ROOT=

