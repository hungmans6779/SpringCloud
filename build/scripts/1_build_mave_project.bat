@REM �M���ù�
CLS

@REM �©��զr
COLOR 07


ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN �M�׫ظm�}�l�G�i%PROJECT_PATH_NAME%�j

ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF_REPO% -f ..\%PROJECT_PATH_NAME%\pom.xml


ECHO\
ECHO\
@REM �ƻs�sĶ������ JAR ��妸�ؿ�
ECHO �ƻs�sĶ������ JAR ��妸�ؿ��G%PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\
CALL COPY %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\target\*.jar  %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\


ECHO\
ECHO\
@REM OWASP Dependency-Check �ˬd JAR ���z�I
ECHO OWASP Dependency-Check �ˬd %PROJECT_PATH_NAME%\*.jar ���z�I
CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                  -s %PROJECT_FOLDER%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                  -f ALL  ^
                                                  -o %PROJECT_FOLDER%\dependency-check_report\%PROJECT_PATH_NAME%\



ECHO\
ECHO\
ECHO MAVEN �M�׫ظm�����G�i%PROJECT_PATH_NAME%�j
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������