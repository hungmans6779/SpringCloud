@REM ---------------------------------------------------------------------------
@REM
@REM Copyright (c) 2024 kevinhung.  All rights reserved.
@REM
@REM STS IDE
@REM Run Configurations
@REM Project： hello
@REM Main Class：com.spring.hello.HelloApplication
@REM Arguments：-Dspring.devtools.restart.enabled=true
@REM ---------------------------------------------------------------------------


@ECHO OFF

@REM 清除螢幕
CLS

@REM 黑底白字
COLOR 07

ECHO\
ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO MAVEN 專案建置開始：【%PJ_PATH_NAME%】

ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF_REPO% -f ..\%PJ_PATH_NAME%\pom.xml


ECHO\
ECHO\
@REM 複製編譯完成的 JAR 到批次目錄
ECHO 複製編譯完成的 JAR 到批次目錄：%PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\
CALL COPY %PJ_FOLDER%\%PJ_PATH_NAME%\target\*.jar  %PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\


ECHO\
ECHO\
@REM OWASP Dependency-Check 檢查 JAR 的弱點
ECHO OWASP Dependency-Check 檢查 %PJ_PATH_NAME%\*.jar 的弱點
CALL %dependency-check_PATH%\dependency-check.bat -project %PJ_PATH_NAME%  ^
                                                  -s %PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\*.jar  ^
                                                  -f ALL  ^
                                                  -o %PJ_FOLDER%\dependency-check_report\%PJ_PATH_NAME%\




ECHO\
ECHO\
ECHO MAVEN 專案建置結束：【%PJ_PATH_NAME%】
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★