Markup

@ECHO OFF

@REM 清除螢幕
CLS

@REM 黑底白字
COLOR 07


ECHO\ 
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 【家用電腦的系統環境變數】

@REM 設定 JAVA 軟件路徑
SET JAVA_HOME=D:\Developers\Tools\jdk-17.0.9.9-hotspot
ECHO\
ECHO JAVA_HOME 變數：《%JAVA_HOME%》


@REM 設定 MAVEN 軟件路徑
SET M2_HOME=D:\Developers\Tools\Maven-4.0.0-alpha-10
ECHO\
ECHO M2_HOME 變數：《%M2_HOME%》


@REM 設定 MAVEN REPO 路徑
SET M2_CONF_REPO=D:\Developers\Tools\Maven-4.0.0-alpha-10\conf\settings_SpringCloud.xml
ECHO\
ECHO M2_CONF_REPO 變數：《%M2_CONF_REPO%》


@REM 設定本機的 dependency-check 路徑
SET dependency-check_PATH=D:\Developers\Tools\dependency-check\dependency-check-9.0.8\bin
ECHO\
ECHO dependency-check_PATH 變數：《%dependency-check_PATH%》


@REM 設定 PATH 路徑
SET PATH=%JAVA_HOME%\bin;%M2_HOME%\bin;C:\Windows;C:\Windows\system32;C:\Python312\;C:\Python312\Scripts\;C:\Program Files\dotnet\;C:\Program Files\Git\cmd;C:\Program Files\TortoiseGit\bin;C:\Windows\System32\Wbem;C:\Program Files\Apache\Ant-1.10.14\bin;C:\Program Files\Apache\Jmeter-5.6.2\bin;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files\OpenLogic\jdk-17.0.9.9-hotspot\bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\AMD APP\bin\x86_64;C:\Program Files (x86)\AMD APP\bin\x86;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\ProgramData\chocolatey\bin;C:\Program Files\Azure Data Studio\bin;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files (x86)\dotnet\;C:\Program Files\OpenSSL-Win64\bin;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\PuTTY\;C:\Program Files\nodejs\;;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\hungm\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\Azure Data Studio\bin;C:\Users\hungm\OneDrive\文件\UltraEdit\;C:\Users\hungm\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin;C:\Users\hungm\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\hungm\AppData\Roaming\npm;C:\Users\hungm\.dotnet\tools
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


ECHO\ 
@REM 使用 Spring Cloud 小而美而精的微服務
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 使用 Spring Cloud 小而美而精的微服務

ECHO\
SET PJ_FOLDER=D:\Developers\SourceCodes\GitHub\SpringProjects\SpringCloud
ECHO 專案資料匣：《%PJ_FOLDER%》

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
ECHO 01.【spring-boot\hello】
ECHO 02.【spring-boot\spring-boot-admin】
ECHO 99.【離開選單】
ECHO **************************************************
ECHO. 請選擇要上列的選項：
SET /p item=
if "%item%"=="01" goto ITEM01
if "%item%"=="02" goto ITEM02
if "%item%"=="99" goto EXIT


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\hello】
:ITEM01

@REM 黑底白字
COLOR 07
ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM 設定 MAVEN 專案的目錄
SET PJ_PATH_NAME=spring-boot\hello

@REM 設定 Docker Image 的名稱
SET IMAGE_NAME=kevinhung/spring-boot_hello

@REM 設定 Docker Image 的 TAG
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%Time:~0,2%%Time:~3,2%

@REM MAVEN 專案建置的批次
SET PJ_MVN_BAT=project\spring-boot\01_1_build_mave_spring-boot_hello.bat

@REM Dockerfile 的批次
SET PJ_DOCKER_IMAGE_BAT=project\spring-boot\01_2_build_docker_image_spring-boot_hello.bat


ECHO 專案路徑名稱：《%PJ_PATH_NAME%》
ECHO 執行 Maven 建置批次：【%PJ_MVN_BAT%】
CALL %PJ_MVN_BAT%

ECHO 執行 DockerImage 建置批次：【%PJ_DOCKER_IMAGE_BAT%】
CALL %PJ_DOCKER_IMAGE_BAT%


CD %PJ_FOLDER%\build





ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN 專案編譯完成

ECHO\
ECHO\
ECHO\
PAUSE

GOTO :MENU


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\spring-boot-admin】
:ITEM02

@REM 黑底白字
COLOR 07
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
ECHO\
ECHO\
ECHO\
ECHO 離開選單

PAUSE

ECHO\
ECHO\
ECHO\
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○


@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎