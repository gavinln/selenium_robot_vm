REM start the selenium node that connects to the VM

set ROOT=%~dp0

set PATH=C:\Program Files (x86)\Java\jre7\bin;%PATH%
REM java -jar %ROOT%jars\selenium-server-standalone-2.31.0.jar -role node -hub http://192.168.0.142:4444/grid/register
java -jar %ROOT%jars\selenium-server-standalone-2.32.0.jar -role node -hub http://127.0.0.1:4444/grid/register

set ROOT=
