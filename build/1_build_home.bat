@ECHO OFF



ECHO\ 
ECHO ��������������������������������������������������������������������������������������������������������������������������������������������
ECHO �i�a�ιq�����]�w�����ܼơj

REM �]�w JAVA �n����|
SET JAVA_HOME=E:\Developers\Tools\jdk-17.0.9.9-hotspot
ECHO\
ECHO JAVA_HOME �ܼ�
ECHO %JAVA_HOME%


@REM �]�w MAVEN �n�� �M REPO For SpringCloud ���|
SET M2_HOME=E:\Developers\Tools\Maven-4.0.0-alpha-10
ECHO\
ECHO M2_HOME �ܼ�
ECHO %M2_HOME%
ECHO %M2_CONF%
SET M2_CONF=E:\Developers\Tools\Maven-4.0.0-alpha-10\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF �ܼ�
ECHO %M2_CONF%


@REM �]�w PATH ���|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Windows;C:\Windows\system32;C:\Python312\;C:\Python312\Scripts\;C:\Program Files\dotnet\;C:\Program Files\Git\cmd;C:\Program Files\TortoiseGit\bin;C:\Windows\System32\Wbem;C:\Program Files\Apache\Ant-1.10.14\bin;C:\Program Files\Apache\Jmeter-5.6.2\bin;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files\OpenLogic\jdk-17.0.9.9-hotspot\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\AMD APP\bin\x86_64;C:\Program Files (x86)\AMD APP\bin\x86;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\ProgramData\chocolatey\bin;C:\Program Files\Azure Data Studio\bin;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files (x86)\dotnet\;C:\Program Files\OpenSSL-Win64\bin;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\PuTTY\;C:\Program Files\nodejs\;;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\hungm\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\Azure Data Studio\bin;C:\Users\hungm\OneDrive\���\UltraEdit\;C:\Users\hungm\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;C:\Users\hungm\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\hungm\AppData\Roaming\npm;C:\Users\hungm\.dotnet\tools
ECHO\
ECHO PATH �ܼ�
ECHO %PATH%


@REM �]�w SpringCloud �M�׸�ƧX�����|
SET PROJECT_ProjectFolder=E:\Developers\SourceCodes\GitHub\SpringProjects\SpringCloud
ECHO\
ECHO PROJECT_ProjectFolder �ܼ�
ECHO %PROJECT_ProjectFolder%


@REM �]�w������ dependency-check ���|
SET dependency-check_PATH=E:\Developers\Tools\dependency-check\dependency-check-9.0.8\bin

   


ECHO\
ECHO\
ECHO ��������������������������������������������������������������������������������������������������������������������������������������������


ECHO\
ECHO\
ECHO ��������������������������������������������������������������������������������������������������������������������������������������������
ECHO JAVA ����
CALL java -version
ECHO ����������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN ����
CALL mvn -version 
ECHO ��������������������������������������������������������������������������������������������������������������������������������������������

ECHO\
ECHO\
ECHO\
PAUSE


ECHO\
ECHO SpringCloud
ECHO �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��



CALL project\01_1_build_mave_spring-boot_hello.bat






ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
ECHO\
ECHO\
PAUSE