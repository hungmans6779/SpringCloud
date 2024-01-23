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
ECHO 複製編譯完成的 JAR 到批次目錄
if "%PROJECT_CHILD_PATH_NAME%"=="" (

   @REM 無子專案
   CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
   
) else (

   @REM 有子專案
   CALL COPY %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_CHILD_PATH_NAME%\
   
)

ECHO\
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★





@REM OWASP Dependency-Check 檢查 JAR 的弱點
@REM 【家裡開發建置環境】才能建置成功
If "%ENV_VAR%"=="HOME" (

  ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  ECHO\

  
  if "%PROJECT_CHILD_PATH_NAME%"=="" (
   
    @REM 無子專案
    CALL ECHO OWASP Dependency-Check 檢查 %PROJECT_PATH_NAME%\*.jar 的弱點
	
    CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                      -s %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                      -f ALL  ^
                                                      -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_PATH_NAME%\
  ) else ( 
  
    @REM 有子專案
    CALL ECHO OWASP Dependency-Check 檢查 %PROJECT_CHILD_PATH_NAME%\*.jar 的弱點
	
    CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_CHILD_PATH_NAME%  ^
                                                      -s %PROJECT_FOLDER%\run_jar\%PROJECT_CHILD_PATH_NAME%\*.jar  ^
                                                      -f ALL  ^
                                                      -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_CHILD_PATH_NAME%\	
  )
  
  ECHO\
  ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
)

