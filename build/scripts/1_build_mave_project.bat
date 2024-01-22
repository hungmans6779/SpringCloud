@REM 清除螢幕
CLS

@REM 黑底白字
COLOR 07


ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO MAVEN 專案建置開始：【%PROJECT_PATH_NAME%】

@REM MAVEN 專案建置
ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF_REPO% -f ..\%PROJECT_PATH_NAME%\pom.xml
ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★







@REM 複製編譯完成的 JAR 到批次目錄
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO\
ECHO\
ECHO 複製編譯完成的 JAR 到批次目錄：%PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
if "%PROJECT_PATH_NAME%"=="spring-boot\hello" (
   @REM 專案 spring-boot\hello
   CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
) else if "%PROJECT_PATH_NAME%"=="spring-boot\spring-boot-admin" (
   @REM 專案 spring-boot\spring-boot-admin
   CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\spring-boot-admin_client\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
   CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\spring-boot-admin_server\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
) else (
  ECHO 尚未定義
)
ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★








@REM OWASP Dependency-Check 檢查 JAR 的弱點
@REM 【家裡開發建置環境】才能建置成功
If "%ENV_VAR%"=="HOME" (
  ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  ECHO\
  CALL ECHO OWASP Dependency-Check 檢查 %PROJECT_PATH_NAME%\*.jar 的弱點
  
  CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                    -s %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                    -f ALL  ^
                                                    -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_PATH_NAME%\

  ECHO\
  ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
)

