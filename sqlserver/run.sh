#!/bin/bash
RED='\033[0;31m'

docker run -e "ACCEPT_EULA=Y" \
    -e "SA_PASSWORD=Pass123$" \
    --restart always \
    -p 1433:1433 \
    -v dev-rdbms-sqlserver-volume:/var/opt/mssql \
    --name dev-rdbms-sqlserver \
    -d mcr.microsoft.com/mssql/server:2019-latest 
    
if [ $? -eq 0 ]
then
   printf "${RED}Default password for 'sa' is 'Pass123$'. This password must be changed on first use!"
fi