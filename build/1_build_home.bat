Markup

@ECHO OFF

@REM �M���ù�
CLS

@REM �©��զr
COLOR 07


ECHO\ 
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �i�a�ιq�����t�������ܼơj

@REM �]�w JAVA �n����|
SET JAVA_HOME=D:\Developers\Tools\jdk-17.0.9.9-hotspot
ECHO\
ECHO JAVA_HOME �ܼơG�m%JAVA_HOME%�n


@REM �]�w MAVEN �n����|
SET M2_HOME=D:\Developers\Tools\Maven-4.0.0-alpha-10
ECHO\
ECHO M2_HOME �ܼơG�m%M2_HOME%�n


@REM �]�w MAVEN REPO ���|
SET M2_CONF_REPO=D:\Developers\Tools\Maven-4.0.0-alpha-10\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF_REPO �ܼơG�m%M2_CONF_REPO%�n


@REM �]�w������ dependency-check ���|
SET dependency-check_PATH=D:\Developers\Tools\dependency-check\dependency-check-9.0.8\bin
ECHO\
ECHO dependency-check_PATH �ܼơG�m%dependency-check_PATH%�n


@REM �]�w PATH ���|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Windows;C:\Windows\system32;C:\Python312\;C:\Python312\Scripts\;C:\Program Files\dotnet\;C:\Program Files\Git\cmd;C:\Program Files\TortoiseGit\bin;C:\Windows\System32\Wbem;C:\Program Files\Apache\Ant-1.10.14\bin;C:\Program Files\Apache\Jmeter-5.6.2\bin;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files\OpenLogic\jdk-17.0.9.9-hotspot\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\AMD APP\bin\x86_64;C:\Program Files (x86)\AMD APP\bin\x86;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\ProgramData\chocolatey\bin;C:\Program Files\Azure Data Studio\bin;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files (x86)\dotnet\;C:\Program Files\OpenSSL-Win64\bin;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\PuTTY\;C:\Program Files\nodejs\;;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\hungm\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\Azure Data Studio\bin;C:\Users\hungm\OneDrive\���\UltraEdit\;C:\Users\hungm\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;C:\Users\hungm\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\hungm\AppData\Roaming\npm;C:\Users\hungm\.dotnet\tools
ECHO\
ECHO PATH �ܼ�
ECHO %PATH%


ECHO\
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������


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


ECHO\ 
@REM �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��

ECHO\
SET PJ_FOLDER=D:\Developers\SourceCodes\GitHub\SpringProjects\SpringCloud
ECHO �M�׸�ƧX�G�m%PJ_FOLDER%�n

ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������


PAUSE





@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������

@REM ���
GOTO MENU


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �D���
:MENU

@REM �M���ù�
CLS

@REM �ũ��զr
COLOR 1F

ECHO **************************************************
ECHO 01.�ispring-boot\hello�j
ECHO 02.�ispring-boot\spring-boot-admin�j
ECHO 99.�i���}���j
ECHO **************************************************
ECHO. �п�ܭn�W�C���ﶵ�G
SET /p item=
if "%item%"=="01" goto ITEM01
if "%item%"=="02" goto ITEM02
if "%item%"=="99" goto EXIT


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\hello�j
:ITEM01

@REM �©��զr
COLOR 07
ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PJ_PATH_NAME=spring-boot\hello

@REM �]�w Docker Image ���W��
SET IMAGE_NAME=kevinhung/spring-boot_hello

@REM �]�w Docker Image �� TAG
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%Time:~0,2%%Time:~3,2%

@REM MAVEN �M�׫ظm���妸
SET PJ_MVN_BAT=project\spring-boot\01_1_build_mave_spring-boot_hello.bat

@REM Dockerfile ���妸
SET PJ_DOCKER_IMAGE_BAT=project\spring-boot\01_2_build_docker_image_spring-boot_hello.bat


ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
ECHO ���� Maven �ظm�妸�G�i%PJ_MVN_BAT%�j
CALL %PJ_MVN_BAT%

ECHO ���� DockerImage �ظm�妸�G�i%PJ_DOCKER_IMAGE_BAT%�j
CALL %PJ_DOCKER_IMAGE_BAT%


CD %PJ_FOLDER%\build





ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����

ECHO\
ECHO\
ECHO\
PAUSE

GOTO :MENU


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\spring-boot-admin�j
:ITEM02

@REM �©��զr
COLOR 07
ECHO\
ECHO\
ECHO\
ECHO �|���B�z spring-boot\spring-boot-admin

ECHO\
ECHO\
ECHO\
PAUSE

GOTO :MENU


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM ���}���
:EXIT
ECHO\
ECHO\
ECHO\
ECHO ���}���

PAUSE

ECHO\
ECHO\
ECHO\
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������