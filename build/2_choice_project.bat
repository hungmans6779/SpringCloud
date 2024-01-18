@REM 清除螢幕
CLS

ECHO\ 
@REM 使用 Spring Cloud 小而美而精的微服務
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 使用 Spring Cloud 小而美而精的微服務

ECHO\
@REM 開發建置變數
ECHO ENV_VAR 變數：《%ENV_VAR%》


ECHO\
@REM MAVEN 專案建置的批次
SET BUILD_MVN_PROJECT_BAT=scripts\1_build_mave_project.bat
ECHO BUILD_MVN_PROJECT_BAT 變數：《%BUILD_MVN_PROJECT_BAT%》


ECHO\
@REM Dockerfile 建置的批次
SET BUILD_DOCKER_IMAGE_BAT=scripts\2_build_docker_image.bat
ECHO BUILD_DOCKER_IMAGE_BAT 變數：《%BUILD_DOCKER_IMAGE_BAT%》


ECHO\
@REM 設定 Docker Image 的 TAG (ex. 20240117)
SET DOCKER_IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO DOCKER_IMAGE_TAG 變數：《%DOCKER_IMAGE_TAG%》

ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

ECHO\
ECHO\
PAUSE




GOTO MENU_PROJECT

@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM  專案建置建置選單
:MENU_PROJECT

@REM 清除螢幕
CLS

@REM 藍底白字
COLOR 1F

ECHO **************************************************
ECHO  1.【spring-boot\hello】
ECHO  2.【spring-boot\spring-boot-admin】
ECHO  x.【離開專案建置選單】
ECHO **************************************************
ECHO. 請選擇要建置的專案選項：
SET /p item_project=
if "%item_project%"=="1" goto MENU_PROJECT_ITEM001
if "%item_project%"=="2" goto MENU_PROJECT_ITEM002
if "%item_project%"=="x" goto MENU_PROJECT_EXIT


:MENU_PROJECT_ITEM001
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\hello】


ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM 設定 MAVEN 專案的目錄
SET PROJECT_PATH_NAME=spring-boot\hello

@REM 設定 Docker Image 的名稱
SET DOCKER_IMAGE_NAME=kevinhung/spring-boot_hello

@REM 建置 Maven 專案
CALL %BUILD_MVN_PROJECT_BAT%

@REM 建置 Docker Image(如果是在家建置才執行 Docker Image 的建置和佈版)
If "%ENV_VAR%"=="HOME" CALL %BUILD_DOCKER_IMAGE_BAT%



@REM 黑底白字
COLOR 07

@REM 回到批次檔的原目錄
CD %PROJECT_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN 專案編譯完成


ECHO\
PAUSE

GOTO :MENU_PROJECT


:MENU_PROJECT_ITEM002
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\spring-boot-admin】


ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM 設定 MAVEN 專案的目錄
SET PROJECT_PATH_NAME=spring-boot\spring-boot-admin

@REM 設定 Docker Image 的名稱
SET DOCKER_IMAGE_NAME=kevinhung/spring-boot-admin

@REM 建置 Maven 專案
CALL %BUILD_MVN_PROJECT_BAT%

@REM 建置 Docker Image (如果是在家建置才執行 Docker Image 的建置和佈版)
If "%ENV_VAR%"=="HOME" CALL %BUILD_DOCKER_IMAGE_BAT%



@REM 黑底白字
COLOR 07

@REM 回到批次檔的原目錄
CD %PROJECT_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN 專案編譯完成


ECHO\
PAUSE

GOTO :MENU_PROJECT


:MENU_PROJECT_EXIT
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 離開專案建置選單

@REM 黑底白字
COLOR 07

@REM 清除螢幕
CLS

ECHO\
ECHO\
ECHO\
ECHO 離開專案建置選單
ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○


@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎