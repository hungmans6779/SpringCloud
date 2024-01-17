Markup

@ECHO OFF

@REM �M���ù�
CLS

@REM �©��զr
COLOR 07


ECHO\ 
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �i���q�q�����t�������ܼơj

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
SET dependency-check_PATH=D:\dependency-check\dependency-check-9.0.8-release\bin
ECHO\
ECHO dependency-check_PATH �ܼơG�m%dependency-check_PATH%�n


@REM �]�w PATH ���|
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Program Files\Docker\Docker\resources\bin;C:\Windows;C:\Windows\system32;C:\Windows\System32\Wbem;D:\Apache-Jmeter-5.2.1\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\IBM\Personal Communications\;C:\Program Files (x86)\IBM\Trace Facility\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\TortoiseGit\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Program Files\PuTTY\;C:\Program Files\IDM Computer Solutions\UltraEdit;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64\;C:\Program Files\nodejs\;C:\Program Files\Docker\Docker\resources\bin;C:\Users\chiahung.hung\AppData\Local\Microsoft\WindowsApps;C:\Users\chiahung.hung\AppData\Local\Programs\Git\cmd;C:\Users\chiahung.hung\AppData\Roaming\npm
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


PAUSE

@REM �M���ù�
CLS

ECHO\ 
@REM �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��


ECHO\
@REM �M�׸�ƧX
SET PJ_FOLDER=D:\Spring_Works\Projects\SpringCloud
ECHO �M�׸�ƧX�G�m%PJ_FOLDER%�n


ECHO\
@REM �]�w Docker Image �� TAG (ex. 202401162359)
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO IMAGE_TAG �ܼơG�m%IMAGE_TAG%�n


ECHO\
@REM MAVEN �M�׫ظm���妸
SET PJ_MVN_BAT=scripts\1_build_mave_project.bat
ECHO PJ_MVN_BAT �ܼơG�m%PJ_MVN_BAT%�n


ECHO\
@REM Dockerfile �ظm���妸
SET PJ_DOCKER_IMAGE_BAT=scripts\2_build_docker_image.bat
ECHO PJ_DOCKER_IMAGE_BAT �ܼơG�m%PJ_DOCKER_IMAGE_BAT%�n

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
ECHO  1.�ispring-boot\hello�j
ECHO  2.�ispring-boot\spring-boot-admin�j
ECHO 99.�i���}���j
ECHO **************************************************
ECHO. �п�ܭn�W�C���ﶵ�G
SET /p item=
if "%item%"=="1" goto ITEM01
if "%item%"=="2" goto ITEM02
if "%item%"=="99" goto EXIT


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\hello�j
:ITEM01

ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PJ_PATH_NAME=spring-boot\hello

@REM �]�w Docker Image ���W��
SET IMAGE_NAME=kevinhung/spring-boot_hello

@REM �ظm Maven �M��
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_MVN_BAT%

@REM �ظm Docker Image
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_DOCKER_IMAGE_BAT%

@REM �©��զr
COLOR 07

@REM �^��妸�ɪ���ؿ�
CD %PJ_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
PAUSE

GOTO :MENU



@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\spring-boot-admin�j
:ITEM02

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

@REM �©��զr
COLOR 07

@REM �M���ù�
CLS

ECHO\
ECHO\
ECHO\
ECHO ���}���

ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������