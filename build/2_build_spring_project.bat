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
SET IMAGE_TAG=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO IMAGE_TAG �ܼơG�m%IMAGE_TAG%�n

ECHO\
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������

ECHO\
ECHO\
PAUSE




@REM �M�׫ظm���
@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������
GOTO MENU_PROJECT


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �D���
:MENU_PROJECT

@REM �M���ù�
CLS

@REM �ũ��զr
COLOR 1F

ECHO **************************************************
ECHO  1.�ispring-boot\hello�j
ECHO  2.�ispring-boot\spring-boot-admin�j
ECHO  x.�i���}�M�׿��j
ECHO **************************************************
ECHO. �п�ܭn�ظm���M�׿ﶵ�G
SET /p _project=
if "%item_project%"=="1" goto :MENU_PROJECT_ITEM001
if "%item_project%"=="2" goto :MENU_PROJECT_ITEM002
if "%item_project%"=="x" goto :MENU_PROJECT_EXIT


@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\hello�j
:MENU_PROJECT_ITEM001

ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PJ_PATH_NAME=spring-boot\hello

@REM �]�w Docker Image ���W��
SET IMAGE_NAME=kevinhung/spring-boot_hello

@REM �ظm Maven �M��
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_MVN_BAT%

@REM �ظm Docker Image
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_DOCKER_IMAGE_BAT%

@REM �©��զr
COLOR 07

@REM �^��妸�ɪ���ؿ�
CD %PJ_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
PAUSE

GOTO :MENU_PROJECT

@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM �M�� �ispring-boot\spring-boot-admin�j
:MENU_PROJECT_ITEM002

ECHO\
ECHO\
ECHO\
ECHO\
ECHO\
@REM �]�w MAVEN �M�ת��ؿ�
SET PJ_PATH_NAME=spring-boot\spring-boot-admin

@REM �]�w Docker Image ���W��
SET IMAGE_NAME=kevinhung/spring-boot-admin

@REM �ظm Maven �M��
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_MVN_BAT%

@REM �ظm Docker Image
ECHO �M�׸��|�W�١G�m%PJ_PATH_NAME%�n
CALL %PJ_DOCKER_IMAGE_BAT%

@REM �©��զr
COLOR 07

@REM �^��妸�ɪ���ؿ�
CD %PJ_FOLDER%\build

ECHO\
ECHO\
ECHO\
ECHO SpringCloud MAVEN �M�׽sĶ����


ECHO\
PAUSE

GOTO :MENU_PROJECT

@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
@REM ���}�M�׿��
:MENU_PROJECT_EXIT

@REM �©��զr
COLOR 07

@REM �M���ù�
CLS

ECHO\
ECHO\
ECHO\
ECHO ���}�M�׿��

ECHO\
ECHO\
PAUSE

ECHO\
ECHO\
ECHO\
@REM ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������


@REM ������������������������������������������������������������������������������������������������������������������������������������������������������������������