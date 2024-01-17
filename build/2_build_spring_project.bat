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
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO IMAGE_TAG 變數：《%IMAGE_TAG%》

ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

ECHO\
ECHO\
PAUSE




@REM 專案建置選單
@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎
GOTO MENU_PROJECT


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 主選單
:MENU_PROJECT

@REM 清除螢幕
CLS

@REM 藍底白字
COLOR 1F

ECHO **************************************************
ECHO  1.【spring-boot\hello】
ECHO  2.【spring-boot\spring-boot-admin】
ECHO  x.【離開專案選單】
ECHO **************************************************
ECHO. 請選擇要建置的專案選項：
SET /p _project=
if "%item_project%"=="1" goto :MENU_PROJECT_ITEM001
if "%item_project%"=="2" goto :MENU_PROJECT_ITEM002
if "%item_project%"=="x" goto :MENU_PROJECT_EXIT


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\hello】
:MENU_PROJECT_ITEM001

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

GOTO :MENU_PROJECT

@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 專案 【spring-boot\spring-boot-admin】
:MENU_PROJECT_ITEM002

ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM 設定 MAVEN 專案的目錄
SET PJ_PATH_NAME=spring-boot\spring-boot-admin

@REM 設定 Docker Image 的名稱
SET IMAGE_NAME=kevinhung/spring-boot-admin

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

GOTO :MENU_PROJECT

@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 離開專案選單
:MENU_PROJECT_EXIT

@REM 黑底白字
COLOR 07

@REM 清除螢幕
CLS

ECHO\
ECHO\
ECHO\
ECHO 離開專案選單

ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○


@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎