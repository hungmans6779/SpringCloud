@REM �M���ù�
CLS

@REM �©��զr
COLOR 07


@REM MAVEN �M�׫ظm
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN �M�׫ظm�}�l�G�i%PROJECT_PATH_NAME%�j
ECHO\
if "%IS_BUILD_MAVEN_PROJECT%"=="TRUE" (
  CALL mvn clean install package -s %M2_CONF_REPO% -f %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\pom.xml
)
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM �ƻs�sĶ������ JAR ��妸�ؿ�
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO\
ECHO �ƻs�sĶ������ JAR ��妸�ؿ�
if "%PROJECT_CHILD_PATH_NAME%"=="" (
   CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
) else (
   CALL COPY %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%\target\*.jar %PROJECT_FOLDER%\run_jar\%PROJECT_CHILD_PATH_NAME%\
)
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM OWASP Dependency-Check �ˬd JAR ���z�I
@REM �i�a�̶}�o�ظm���ҡj�~��ظm���\
If "%ENV_VAR%"=="HOME" (

  ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ECHO\
  if "%PROJECT_CHILD_PATH_NAME%"=="" (
   
    @REM �L�l�M��
    CALL ECHO OWASP Dependency-Check �ˬd %PROJECT_PATH_NAME%\*.jar ���z�I
	
    CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                      -s %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                      -f ALL  ^
                                                      -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_PATH_NAME%\
  ) else ( 
  
    @REM ���l�M��
    CALL ECHO OWASP Dependency-Check �ˬd %PROJECT_CHILD_PATH_NAME%\*.jar ���z�I
	
    CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_CHILD_PATH_NAME%  ^
                                                      -s %PROJECT_FOLDER%\run_jar\%PROJECT_CHILD_PATH_NAME%\*.jar  ^
                                                      -f ALL  ^
                                                      -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_CHILD_PATH_NAME%\	
  )
  ECHO\
  ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
)