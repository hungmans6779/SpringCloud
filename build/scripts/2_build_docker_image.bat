@REM �M���ù�
CLS

@REM �L�ũ��զr
COLOR 97


ECHO ������������������������������������������������������������������������������������������������������������������������������������������������������������������
ECHO Dockerfile �ظm�}�l
ECHO Docker Image TAG �G�i%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%�j

@REM �� Dockerfile ���ؿ��U
CD %PROJECT_FOLDER%\%PROJECT_PATH_NAME%


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