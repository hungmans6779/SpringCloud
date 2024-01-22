@REM 清除螢幕
CLS

@REM 淺藍底白字
COLOR 97


ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO Dockerfile 建置開始

@REM 到 Dockerfile 的目錄下
if "%PROJECT_CHILD_PATH_NAME%"=="" (
  ECHO Dockerfile 路徑=%PROJECT_FOLDER%\%PROJECT_PATH_NAME%
  CD %PROJECT_FOLDER%\%PROJECT_PATH_NAME%
) else (
  ECHO Dockerfile 路徑 = %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%
  CD %PROJECT_FOLDER%\%PROJECT_CHILD_PATH_NAME%
)

ECHO Docker Image TAG ：【%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%】



ECHO\
ECHO\
@REM 建置 Docker Image
ECHO 建置 Dockerfile
CALL docker build --build-arg JAR_FILE=target/*.jar -t %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% .


ECHO\
ECHO\
@REM Image push DockerHub (帳號：kevinhung)
ECHO Image push DockerHub (帳號：kevinhung)
CALL docker push %DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%
 

 
ECHO\
ECHO\
ECHO DockerImage：【%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG%】
ECHO Dockerfile 建置結束
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★