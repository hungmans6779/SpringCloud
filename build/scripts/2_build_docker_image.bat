@REM �M���ù�
CLS

@REM �©��զr
COLOR 07

ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO DockerImage�G%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% �ظm�}�l

@REM �� Dockerfile ���ؿ��U
if "%PROJECT_CHILD_PATH_NAME%"=="" (
  CD %PROJECT_FOLDER%\%PROJECT_PATH_NAME%\
) else (
  CD %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%\
)


ECHO\
@REM �ظm Docker Image
ECHO �ظm Dockerfile
CALL docker build --build-arg JAR_FILE=target/*.jar -t %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% .


ECHO\
@REM Image push DockerHub (�b���Gkevinhung)
ECHO Image push DockerHub (�b���Gkevinhung)
CALL docker push %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%
  
ECHO\
ECHO DockerImage�G%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% �ظm����
ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������