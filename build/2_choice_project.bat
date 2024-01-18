@REM �M���ù�
CLS

ECHO\ 
@REM �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO �ϥ� Spring Cloud �p�Ӭ��Ӻ몺�L�A��

ECHO\
@REM �}�o�ظm�ܼ�
ECHO ENV_VAR �ܼơG�m%ENV_VAR%�n


ECHO\
@REM MAVEN �M�׫ظm���妸
SET BUILD_MVN_PROJECT_BAT=scripts\1_build_mave_project.bat
ECHO BUILD_MVN_PROJECT_BAT �ܼơG�m%BUILD_MVN_PROJECT_BAT%�n


ECHO\
@REM Dockerfile �ظm���妸
SET BUILD_DOCKER_IMAGE_BAT=scripts\2_build_docker_image.bat
ECHO BUILD_DOCKER_IMAGE_BAT �ܼơG�m%BUILD_DOCKER_IMAGE_BAT%�n


ECHO\
@REM �]�w Docker Image �� TAG (ex. 20240117)
SET DOCKER_IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO DOCKER_IMAGE_TAG �ܼơG�m%DOCKER_IMAGE_TAG%�n

ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������

ECHO\
ECHO\
PAUSE




GOTO MENU_PROJECT

@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM  �M�׫ظm�ظm���
:MENU_PROJECT

@REM �M���ù�
CLS

@REM �ũ��զr
COLOR 1F

ECHO **************************************************
ECHO  1.�ispring-boot\hello�j
ECHO  2.�ispring-boot\spring-boot-admin�j
ECHO  x.�i���}�M�׫ظm���j
ECHO **************************************************
ECHO. �п�ܭn�ظm���M�׿ﶵ�G
SET /p item_project=
if "%item_project%"=="1" goto MENU_PROJECT_ITEM001
if "%item_project%"=="2" goto MENU_PROJECT_ITEM002
if "%item_project%"=="x" goto MENU_PROJECT_EXIT


:MENU_PROJECT_ITEM001
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\hello�j


ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PROJECT_PATH_NAME=spring-boot\hello

@REM �]�w Docker Image ���W��
SET DOCKER_IMAGE_NAME=kevinhung/spring-boot_hello

@REM �ظm Maven �M��
CALL %BUILD_MVN_PROJECT_BAT%

@REM �ظm Docker Image(�p�G�O�b�a�ظm�~���� Docker Image ���ظm�M�G��)
If "%ENV_VAR%"=="HOME" CALL %BUILD_DOCKER_IMAGE_BAT%



@REM �©��զr
COLOR 07

@REM �^��妸�ɪ���ؿ�
CD %PROJECT_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
PAUSE

GOTO :MENU_PROJECT


:MENU_PROJECT_ITEM002
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\spring-boot-admin�j


ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PROJECT_PATH_NAME=spring-boot\spring-boot-admin

@REM �]�w Docker Image ���W��
SET DOCKER_IMAGE_NAME=kevinhung/spring-boot-admin

@REM �ظm Maven �M��
CALL %BUILD_MVN_PROJECT_BAT%

@REM �ظm Docker Image (�p�G�O�b�a�ظm�~���� Docker Image ���ظm�M�G��)
If "%ENV_VAR%"=="HOME" CALL %BUILD_DOCKER_IMAGE_BAT%



@REM �©��զr
COLOR 07

@REM �^��妸�ɪ���ؿ�
CD %PROJECT_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
PAUSE

GOTO :MENU_PROJECT


:MENU_PROJECT_EXIT
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM ���}�M�׫ظm���

@REM �©��զr
COLOR 07

@REM �M���ù�
CLS

ECHO\
ECHO\
ECHO\
ECHO ���}�M�׫ظm���
ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������