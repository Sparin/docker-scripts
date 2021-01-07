#!/bin/bash
RED='\033[0;31m'

docker run -p 5432:5432 \
    --name dev-rdbms-postgres \
    -e POSTGRES_PASSWORD=Pass123$ \
    -v dev-rdbms-postgres-volume:/var/lib/postgresql/data \
    --restart always \
    -d postgres
    
if [ $? -eq 0 ]
then
   printf "${RED}Default password for 'postgres' is 'Pass123$'. This password must be changed on first use!"
fi