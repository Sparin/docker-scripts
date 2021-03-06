#!/bin/bash
RED='\033[0;31m'

read -p "Enter default or user email: " email;

docker run -p 5480:80 \
    -e "PGADMIN_DEFAULT_EMAIL=$email" \
    -e "PGADMIN_DEFAULT_PASSWORD=Pass123$" \
    -e "PGADMIN_CONFIG_ENHANCED_COOKIE_PROTECTION=True" \
    -e "PGADMIN_CONFIG_CONSOLE_LOG_LEVEL=10" \
    --name dev-ui-pgadmin \
    -v dev-ui-pgadmin-volume:/var/lib/pgadmin \
    --restart always \
    -d dpage/pgadmin4
    
if [ $? -eq 0 ]
then
   printf "${RED}Default password for 'sa' is 'Pass123$'. This password must be changed on first use!"
fi