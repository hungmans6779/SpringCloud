@REM ---------------------------------------------------------------------------
@REM
@REM Copyright (c) 2024 kevinhung.  All rights reserved.
@REM
@REM STS IDE
@REM Run Configurations
@REM Project�G hello
@REM Main Class�Gcom.spring.hello.HelloApplication
@REM Arguments�G-Dspring.devtools.restart.enabled=true
@REM ---------------------------------------------------------------------------


@ECHO OFF

@REM �M���ù�
CLS

@REM �©��զr
COLOR 07

ECHO\
ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO MAVEN �M�׫ظm�}�l�G�i%PJ_PATH_NAME%�j

ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF_REPO% -f ..\%PJ_PATH_NAME%\pom.xml


ECHO\
ECHO\
@REM �ƻs�sĶ������ JAR ��妸�ؿ�
ECHO �ƻs�sĶ������ JAR ��妸�ؿ��G%PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\
CALL COPY %PJ_FOLDER%\%PJ_PATH_NAME%\target\*.jar  %PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\


ECHO\
ECHO\
@REM OWASP Dependency-Check �ˬd JAR ���z�I
ECHO OWASP Dependency-Check �ˬd %PJ_PATH_NAME%\*.jar ���z�I
CALL %dependency-check_PATH%\dependency-check.bat -project %PJ_PATH_NAME%  ^
                                                  -s %PJ_FOLDER%\run_jar\%PJ_PATH_NAME%\jar\*.jar  ^
                                                  -f ALL  ^
                                                  -o %PJ_FOLDER%\dependency-check_report\%PJ_PATH_NAME%\



ECHO\
ECHO\
ECHO MAVEN �M�׫ظm�����G�i%PJ_PATH_NAME%�j
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������