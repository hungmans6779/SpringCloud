Markup

@ECHO OFF

@REM 清除螢幕
CLS

@REM ◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎◎

@REM 環境選單
GOTO MENU_ENV

@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 主選單
:MENU_ENV

@REM 清除螢幕
CLS

@REM 藍底白字
COLOR 1F

ECHO **************************************************
ECHO 1.【家裡開發建置環境】
ECHO 2.【公司開發建置環境】
ECHO x.【離開專案建置】
ECHO **************************************************
ECHO 請選擇建置環境的選項：
SET /p item_env=
if "%item_env%"=="1" goto :MENU_ENV_HOME
if "%item_env%"=="2" goto :MENU_ENV_COMPANY
if "%item_env%"=="x" goto :MENU_ENV_EXIT




@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 【家裡開發建置環境】
:MENU_ENV_HOME

@REM 清除螢幕
CLS

@REM 黑底白字
COLOR 07

@REM 設定開發建置變數
SET ENV_VAR=HOME

ECHO 建置環境批次名稱：《1_1_env_home.bat》
CALL 1_1_env_home.bat
PAUSE

ECHO 建置專案批次名稱：《2_build_spring_project.bat》
CALL 2_build_spring_project.bat

ECHO\
ECHO\
PAUSE

goto :MENU_ENV
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○


@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 【公司開發建置環境】
:MENU_ENV_COMPANY

@REM 清除螢幕
CLS

@REM 灰底白字
COLOR 87

@REM 開發建置變數
SET ENV_VAR=COMPANY

ECHO 建置環境批次名稱：《1_2_env_company.bat》
CALL 1_2_env_company.bat
PAUSE

ECHO 建置專案批次名稱：《2_build_spring_project.bat》
CALL 2_build_spring_project.bat

ECHO\
ECHO\
PAUSE

goto :MENU_ENV
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○




@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
@REM 【離開專案建置】
:MENU_ENV_EXIT

@REM 黑底白字
COLOR 07

@REM 清除螢幕
CLS

ECHO\
ECHO\
ECHO\
ECHO 離開專案建置

ECHO\
ECHO\
PAUSE
EXIT::
ECHO\
ECHO\
ECHO\
@REM ○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
