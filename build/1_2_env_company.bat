ECHO\ 
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �i���q�}�o�ظm�����ܼơj

@REM �]�w JAVA �n����|
SET JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.8.101-hotspot
ECHO\
ECHO JAVA_HOME �ܼơG�m%JAVA_HOME%�n


@REM �]�w MAVEN �n����|
SET M2_HOME=D:\Apache-Maven-3.8.6
ECHO\
ECHO M2_HOME �ܼơG�m%M2_HOME%�n


@REM �]�w MAVEN REPO ���|
SET M2_CONF_REPO=D:\Apache-Maven-3.8.6\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF_REPO �ܼơG�m%M2_CONF_REPO%�n


@REM �]�w������ dependency-check ���|
SET dependency-check_PATH=D:\dependency-check\dependency-check-9.0.7-release\bin
ECHO\
ECHO dependency-check_PATH �ܼơG�m%dependency-check_PATH%�n


@REM �]�w PATH ���|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Program Files\Docker\Docker\resources\bin;C:\Windows;C:\Windows\system32;C:\Windows\System32\Wbem;D:\Apache-Jmeter-5.2.1\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\IBM\Personal Communications\;C:\Program Files (x86)\IBM\Trace Facility\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\TortoiseGit\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Program Files\PuTTY\;C:\Program Files\IDM Computer Solutions\UltraEdit;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64\;C:\Program Files\nodejs\;C:\Program Files\Docker\Docker\resources\bin;C:\Users\chiahung.hung\AppData\Local\Microsoft\WindowsApps;C:\Users\chiahung.hung\AppData\Local\Programs\Git\cmd;C:\Users\chiahung.hung\AppData\Roaming\npm
ECHO\
ECHO PATH �ܼ�
ECHO %PATH%


@REM �M�׸�ƧX
SET PROJECT_FOLDER=D:\Spring_Works\Projects\SpringCloud
ECHO\
ECHO �M�׸�ƧX�G�m%PROJECT_FOLDER%�n


ECHO\
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO\


ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO JAVA ����
CALL java -version
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN ����
CALL mvn -version 
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO\
ECHO\