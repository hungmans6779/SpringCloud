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



ECHO\
ECHO\
ECHO\
ECHO 執行批次：【spring-boot_hello.bat】


@REM 設定本機 SpringCloud 專案名稱
SET PROJECT_NAME=spring-boot\hello
ECHO\
ECHO 專案名稱：《%PROJECT_NAME%》


ECHO\
ECHO\
ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO 專案建置開始：【spring-boot_hello】

ECHO\
ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF% -f ..\spring-boot\hello\pom.xml


ECHO\
ECHO\
ECHO\
@REM 複製編譯完成的 JAR 到批次目錄
ECHO 複製編譯完成的 JAR 到批次目錄：%PROJECT_PATH%\【批次】\%PROJECT_NAME%\jar\
CALL COPY %PROJECT_PATH%\%PROJECT_NAME%\target\*.jar  %PROJECT_PATH%\【批次】\%PROJECT_NAME%\jar\


ECHO\
ECHO\
ECHO\
@REM OWASP Dependency-Check 檢查 JAR 的弱點
ECHO OWASP Dependency-Check 檢查 %PROJECT_NAME%\*.jar 的弱點
CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_NAME%  -s %PROJECT_PATH%\%PROJECT_NAME%\target\*.jar  -f ALL  -o %PROJECT_PATH%\%PROJECT_NAME%\dependency-check\





ECHO\
ECHO\
ECHO\
ECHO 專案建置結束：【spring-boot_hello】
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★