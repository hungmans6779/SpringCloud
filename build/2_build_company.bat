@ECHO OFF



ECHO\ 
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO �iそ�q�q牽�些]�w泉航怒柴�j

REM �]�w JAVA �nン侯�|
SET JAVA_HOME=D:\Developers\Tools\jdk-17.0.9.9-hotspot
ECHO\
ECHO JAVA_HOME 怒柴
ECHO %JAVA_HOME%


REM �]�w MAVEN �nン �M REPO For SpringCloud 侯�|
SET M2_HOME=D:\Developers\Tools\Maven-4.0.0-alpha-10
ECHO\
ECHO M2_HOME 怒柴
ECHO %M2_HOME%
ECHO %M2_CONF%
SET M2_CONF=D:\Developers\Tools\Maven-4.0.0-alpha-10\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF 怒柴
ECHO %M2_CONF%


REM �]�w PATH 侯�|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Windows;C:\Windows\system32;C:\Python312\;C:\Python312\Scripts\;C:\Program Files\dotnet\;C:\Program Files\Git\cmd;C:\Program Files\TortoiseGit\bin;C:\Windows\System32\Wbem;C:\Program Files\Apache\Ant-1.10.14\bin;C:\Program Files\Apache\Jmeter-5.6.2\bin;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files\OpenLogic\jdk-17.0.9.9-hotspot\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\AMD APP\bin\x86_64;C:\Program Files (x86)\AMD APP\bin\x86;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\ProgramData\chocolatey\bin;C:\Program Files\Azure Data Studio\bin;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files (x86)\dotnet\;C:\Program Files\OpenSSL-Win64\bin;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\PuTTY\;C:\Program Files\nodejs\;;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\hungm\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\Azure Data Studio\bin;C:\Users\hungm\OneDrive\ゅン\UltraEdit\;C:\Users\hungm\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;C:\Users\hungm\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\hungm\AppData\Roaming\npm;C:\Users\hungm\.dotnet\tools
ECHO\
ECHO PATH 怒柴
ECHO %PATH%


REM �]�w SpringCloud �M�廬左��|
SET PROJECT_PATH=D:\Developers\SourceCodes\GitHub\SpringProjects\SpringCloud
ECHO\
ECHO PROJECT_PATH 怒柴
ECHO %PROJECT_PATH%


ECHO\
ECHO\
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々


ECHO\
ECHO\
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO JAVA ��セ
CALL java -version
ECHO 仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝仝
ECHO MAVEN ��セ
CALL mvn -version 
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々

ECHO\
ECHO\
ECHO\
PAUSE


ECHO\
ECHO SpringCloud
ECHO �魯� Spring Cloud �pτ��τ埼�嵯L�A鞍



CALL project\spring-boot\01_spring-boot_hello.bat






ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�彌s超ЧΘ


ECHO\
ECHO\
ECHO\
PAUSE