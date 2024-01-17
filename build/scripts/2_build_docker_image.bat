@REM 清除螢幕
CLS

@REM 淺藍底白字
COLOR 97


ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
ECHO Dockerfile 建置開始
ECHO Docker Image TAG ：【%IMAGE_NAME%:%IMAGE_TAG%】

@REM 到 Dockerfile 的目錄下
CD %PJ_FOLDER%\%PJ_PATH_NAME%


ECHO\
ECHO\
@REM 建置 Docker Image
ECHO 建置 Dockerfile
CALL docker build --build-arg JAR_FILE=target/*.jar -t %IMAGE_NAME%:%IMAGE_TAG% .


ECHO\
ECHO\
@REM Image push DockerHub (帳號：kevinhung)
ECHO Image push DockerHub (帳號：kevinhung)
CALL docker push %IMAGE_NAME%:%IMAGE_TAG%
 

@REM 運行 Docker image 的方式 
@REM docker run -d -p 8080:8080 spring-boot/hello:%IMAGE_TAG%
@REM http://localhost:8080/hello
 
 
ECHO\
ECHO\
ECHO DockerImage：【%IMAGE_NAME%:%IMAGE_TAG%】
ECHO Dockerfile 建置結束
ECHO ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★