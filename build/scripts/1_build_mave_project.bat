@REM �M���ù�
CLS

@REM �©��զr
COLOR 07


ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN �M�׫ظm�}�l�G�i%PROJECT_PATH_NAME%�j

@REM MAVEN �M�׫ظm
ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF_REPO% -f ..\%PROJECT_PATH_NAME%\pom.xml
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������







@REM �ƻs�sĶ������ JAR ��妸�ؿ�
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO\
ECHO\
ECHO �ƻs�sĶ������ JAR ��妸�ؿ��G%PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\

If "%PROJECT_PATH_NAME%"=="spring-boot\hello"              Goto PROJECT_ITEM001
If "%PROJECT_PATH_NAME%"=="spring-boot\spring-boot-admin"  Goto PROJECT_ITEM002
If "%PROJECT_PATH_NAME%"=="x" Goto :PROJECT_ITEM003



@REM �M�� spring-boot\hello
:PROJECT_ITEM001
CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\target\*.jar  %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\



@REM �M�� spring-boot\spring-boot-admin
:PROJECT_ITEM002
CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\spring-boot-admin_client\target\*.jar ^
          %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\

CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\spring-boot-admin_server\target\*.jar  ^
          %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\


ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������







@REM dependency-check �ˬd�z�I
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO\
ECHO\
@REM OWASP Dependency-Check �ˬd JAR ���z�I
ECHO OWASP Dependency-Check �ˬd %PROJECT_PATH_NAME%\*.jar ���z�I
If "%ENV_VAR%"=="HOME" CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                                          -s %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                                          -f ALL  ^
                                                                          -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_PATH_NAME%\


ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������



