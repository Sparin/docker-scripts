#!/bin/bash
RED='\033[0;31m'

docker run \
    --name dev-rdbms-mysql \
    --restart always \
    -e MYSQL_ROOT_PASSWORD=Pass123$ \
    -v dev-rdbms-mysql-volume:/var/lib/mysql \
    -p 3306:3306 \
    -itd mysql
    
if [ $? -eq 0 ]
then
   printf "${RED}Default password for 'root' is 'Pass123$'. This password must be changed on first use!"
fi