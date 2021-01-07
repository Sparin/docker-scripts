@echo off

docker run -e "ACCEPT_EULA=Y" ^
    -e "SA_PASSWORD=Pass123$" ^
    --restart always ^
    -p 1433:1433 ^
    -v dev-rdbms-sqlserver-volume:/var/opt/mssql ^
    --name dev-rdbms-sqlserver ^
    -d mcr.microsoft.com/mssql/server:2019-latest
    
if %errorlevel% == 0 (
    echo Default password for 'sa' is 'Pass123$'. This password must be changed on first use!
)
