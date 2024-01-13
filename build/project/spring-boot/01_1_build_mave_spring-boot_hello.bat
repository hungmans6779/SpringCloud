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



ECHO\
ECHO\
ECHO\
ECHO ����妸�G�ispring-boot_hello.bat�j


ECHO\
ECHO\
ECHO\
@REM �]�w SpringCloud �M�׸�ƧX�����|
ECHO SpringCloud �M�׸�ƧX�����|�G�m%PROJECT_ProjectFolder%�n


@REM �]�w�M�׸��|�W��
SET PROJECT_PATH_NAME=spring-boot\hello
ECHO\
ECHO �M�׸��|�G�m%PROJECT_PATH_NAME%�n



ECHO\
ECHO\
ECHO\
ECHO ��������������������������������������������������������������������������������������������������������������������������������
ECHO �M�׫ظm�}�l�G�ispring-boot_hello�j

ECHO\
ECHO\
ECHO\
CALL mvn clean install package -s %M2_CONF% -f ..\spring-boot\hello\pom.xml


ECHO\
ECHO\
ECHO\
@REM �ƻs�sĶ������ JAR ��妸�ؿ�
ECHO �ƻs�sĶ������ JAR ��妸�ؿ��G%PROJECT_ProjectFolder%\run_jar\%PROJECT_PATH_NAME%\jar\
CALL COPY %PROJECT_ProjectFolder%\%PROJECT_PATH_NAME%\target\*.jar  %PROJECT_ProjectFolder%\run_jar\%PROJECT_PATH_NAME%\jar\


ECHO\
ECHO\
ECHO\
@REM OWASP Dependency-Check �ˬd JAR ���z�I
ECHO OWASP Dependency-Check �ˬd %PROJECT_PATH_NAME%\*.jar ���z�I
CALL %dependency-check_PATH%\dependency-check.bat -project %PROJECT_PATH_NAME%  ^
                                                  -s %PROJECT_ProjectFolder%\run_jar\%PROJECT_PATH_NAME%\jar\*.jar  ^
                                                  -f ALL  ^
                                                  -o %PROJECT_ProjectFolder%\dependency-check_report\%PROJECT_PATH_NAME%\





ECHO\
ECHO\
ECHO\
ECHO �M�׫ظm�����G�ispring-boot_hello�j
ECHO ��������������������������������������������������������������������������������������������������������������������������������