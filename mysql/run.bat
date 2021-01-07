@echo off

docker run ^
    --name dev-rdbms-mysql ^
    --restart always ^
    -e MYSQL_ROOT_PASSWORD=Pass123$ ^
    -v dev-rdbms-mysql-volume:/var/lib/mysql ^
    -p 3306:3306 ^
    -itd mysql
    
if %errorlevel% == 0 (
    echo Default password for 'root' is 'Pass123$'. This password must be changed on first use!
)
