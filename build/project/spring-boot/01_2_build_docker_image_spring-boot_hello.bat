@REM
@REM Copyright (c) 2024 kevinhung.  All rights reserved.
@REM
@REM ---------------------------------------------------------------------------


@ECHO OFF


ECHO\
ECHO\
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々
ECHO Dockerfile �惴m�}�l
ECHO DockerImage�G�i%IMAGE_NAME%:%IMAGE_TAG%�j

@REM �� Dockerfile �坤愎��U
CD %PJ_FOLDER%\%PJ_PATH_NAME%

ECHO\
ECHO\
ECHO\
@REM �惴m Docker Image
ECHO �惴m Dockerfile
CALL docker build --build-arg JAR_FILE=target/*.jar -t %IMAGE_NAME%:%IMAGE_TAG% .

ECHO\
ECHO\
ECHO\
@REM Image push DockerHub (�b弦�Gkevinhung)
ECHO Image push DockerHub (�b弦�Gkevinhung)
CALL docker push %IMAGE_NAME%:%IMAGE_TAG%
 

@REM �B�� Docker image �困荀� 
@REM docker run -d -p 8080:8080 spring-boot/hello:%IMAGE_TAG%
@REM http://localhost:8080/hello
 
 
ECHO\
ECHO\
ECHO\
ECHO DockerImage�G�i%IMAGE_NAME%:%IMAGE_TAG%�j
ECHO Dockerfile �惴m飢��
ECHO 々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々々