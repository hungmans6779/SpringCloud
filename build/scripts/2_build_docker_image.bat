@REM �M���ù�
CLS

@REM �L�ũ��զr
COLOR 97


ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO Dockerfile �ظm�}�l

@REM �� Dockerfile ���ؿ��U
if "%PROJECT_CHILD_PATH_NAME%"=="" (
  ECHO Dockerfile ���|=%PROJECT_FOLDER%\%PROJECT_PATH_NAME%
  CD %PROJECT_FOLDER%\%PROJECT_PATH_NAME%
) else (
  ECHO Dockerfile ���| = %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%
  CD %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%
)

ECHO Docker Image TAG �G�i%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%�j



ECHO\
ECHO\
@REM �ظm Docker Image
ECHO �ظm Dockerfile
CALL docker build --build-arg JAR_FILE=target/*.jar -t %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% .


ECHO\
ECHO\
@REM Image push DockerHub (�b���Gkevinhung)
ECHO Image push DockerHub (�b���Gkevinhung)
CALL docker push %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%
 

 
ECHO\
ECHO\
ECHO DockerImage�G�i%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%�j
ECHO Dockerfile �ظm����
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������