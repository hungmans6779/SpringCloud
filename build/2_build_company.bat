Markup

@ECHO OFF

@REM 清除螢幕
CLS

@REM 黑底白字
COLOR 07


ECHO\ 
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 【公司電腦的系統環境變數】

@REM 設定 JAVA 軟件路徑
SET JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.8.101-hotspot
ECHO\
ECHO JAVA_HOME 變數：《%JAVA_HOME%》


@REM 設定 MAVEN 軟件路徑
SET M2_HOME=D:\Apache-Maven-3.8.6
ECHO\
ECHO M2_HOME 變數：《%M2_HOME%》


@REM 設定 MAVEN REPO 路徑
SET M2_CONF_REPO=D:\Apache-Maven-3.8.6\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF_REPO 變數：《%M2_CONF_REPO%》


@REM 設定本機的 dependency-check 路徑
SET dependency-check_PATH=D:\dependency-check\dependency-check-9.0.8-release\bin
ECHO\
ECHO dependency-check_PATH 變數：《%dependency-check_PATH%》


@REM 設定 PATH 路徑
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Program Files\Docker\Docker\resources\bin;C:\Windows;C:\Windows\system32;C:\Windows\System32\Wbem;D:\Apache-Jmeter-5.2.1\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\IBM\Personal Communications\;C:\Program Files (x86)\IBM\Trace Facility\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\TortoiseGit\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Program Files\PuTTY\;C:\Program Files\IDM Computer Solutions\UltraEdit;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog;C:\Program Files (x86)\Serena\Dimensions 14.2\CM\prog64\;C:\Program Files\nodejs\;C:\Program Files\Docker\Docker\resources\bin;C:\Users\chiahung.hung\AppData\Local\Microsoft\WindowsApps;C:\Users\chiahung.hung\AppData\Local\Programs\Git\cmd;C:\Users\chiahung.hung\AppData\Roaming\npm
ECHO\
ECHO PATH 變數
ECHO %PATH%


ECHO\
ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO JAVA 版本
CALL java -version
ECHO ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
ECHO MAVEN 版本
CALL mvn -version 
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO\
ECHO\


PAUSE

@REM 清除螢幕
CLS

ECHO\ 
@REM 使用 Spring Cloud 小而美而精的微服務
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 使用 Spring Cloud 小而美而精的微服務


ECHO\
@REM 專案資料匣
SET PJ_FOLDER=D:\Spring_Works\Projects\SpringCloud
ECHO 專案資料匣：《%PJ_FOLDER%》


ECHO\
@REM 設定 Docker Image 的 TAG (ex. 202401162359)
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO IMAGE_TAG 變數：《%IMAGE_TAG%》


ECHO\
@REM MAVEN 專案建置的批次
SET PJ_MVN_BAT=scripts\1_build_mave_project.bat
ECHO PJ_MVN_BAT 變數：《%PJ_MVN_BAT%》


ECHO\
@REM Dockerfile 建置的批次
SET PJ_DOCKER_IMAGE_BAT=scripts\2_build_docker_image.bat
ECHO PJ_DOCKER_IMAGE_BAT 變數：《%PJ_DOCKER_IMAGE_BAT%》

ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


PAUSE




@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎

@REM 選單
GOTO MENU


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 主選單
:MENU

@REM 清除螢幕
CLS

@REM 藍底白字
COLOR 1F

ECHO **************************************************
ECHO  1.【spring-boot\hello】
ECHO  2.【spring-boot\spring-boot-admin】
ECHO 99.【離開選單】
ECHO **************************************************
ECHO. 請選擇要上列的選項：
SET /p item=
if "%item%"=="1" goto ITEM01
if "%item%"=="2" goto ITEM02
if "%item%"=="99" goto EXIT


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\hello】
:ITEM01

ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM 設定 MAVEN 專案的目錄
SET PJ_PATH_NAME=spring-boot\hello

@REM 設定 Docker Image 的名稱
SET IMAGE_NAME=kevinhung/spring-boot_hello

@REM 建置 Maven 專案
ECHO 專案路徑名稱：《%PJ_PATH_NAME%》
CALL %PJ_MVN_BAT%

@REM 建置 Docker Image
ECHO 專案路徑名稱：《%PJ_PATH_NAME%》
CALL %PJ_DOCKER_IMAGE_BAT%

@REM 黑底白字
COLOR 07

@REM 回到批次檔的原目錄
CD %PJ_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN 專案編譯完成


ECHO\
PAUSE

GOTO :MENU



@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\spring-boot-admin】
:ITEM02

ECHO\
ECHO\
ECHO\
ECHO 尚未處理 spring-boot\spring-boot-admin

ECHO\
ECHO\
ECHO\
PAUSE

GOTO :MENU


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 離開選單
:EXIT

@REM 黑底白字
COLOR 07

@REM 清除螢幕
CLS

ECHO\
ECHO\
ECHO\
ECHO 離開選單

ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○


@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎