ECHO\ 
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO �iそ�q�}�o�惴m泉航怒柴�j

@REM �]�w JAVA �nン侯�|
SET JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.8.101-hotspot
ECHO\
ECHO JAVA_HOME 怒柴�G�m%JAVA_HOME%�n


@REM �]�w MAVEN �nン侯�|
SET M2_HOME=D:\Apache-Maven-3.8.6
ECHO\
ECHO M2_HOME 怒柴�G�m%M2_HOME%�n


@REM �]�w MAVEN REPO 侯�|
SET M2_CONF_REPO=D:\Apache-Maven-3.8.6\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF_REPO 怒柴�G�m%M2_CONF_REPO%�n


@REM �]�wセ穣�� dependency-check 侯�|
SET dependency-check_PATH=D:\dependency-check\dependency-check-9.0.7-release\bin
ECHO\
ECHO dependency-check_PATH 怒柴�G�m%dependency-check_PATH%�n


@REM �]�w PATH 侯�|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Program Files\Docker\Docker\resources\bin;C:\Windows;C:\Windows\system32;C:\Windows\System32\Wbem;D:\Apache-Jmeter-5.2.1\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\IBM\Personal Communications\;C:\Program Files (x86)\IBM\Trace Facility\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\TortoiseGit\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Program Files\PuTTY\;C:\Program Files\IDM Computer Solutions\UltraEdit;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64\;C:\Program Files\nodejs\;C:\Program Files\Docker\Docker\resources\bin;C:\Users\chiahung.hung\AppData\Local\Microsoft\WindowsApps;C:\Users\chiahung.hung\AppData\Local\Programs\Git\cmd;C:\Users\chiahung.hung\AppData\Roaming\npm
ECHO\
ECHO PATH 怒柴
ECHO %PATH%


@REM �M�弩螫踏X
SET PROJECT_FOLDER=D:\Spring_Works\Projects\SpringCloud
ECHO\
ECHO �M�弩螫踏X�G�m%PROJECT_FOLDER%�n


ECHO\
ECHO\
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO\


ECHO\
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO JAVA ��セ
CALL java -version
ECHO 仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝
ECHO MAVEN ��セ
CALL mvn -version 
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO\
ECHO\