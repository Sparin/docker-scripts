@echo off

docker run -p 5432:5432 ^
    --name dev-rdbms-postgres ^
    -e POSTGRES_PASSWORD=Pass123$ ^
    -v dev-rdbms-postgres-volume:/var/lib/postgresql/data ^
    --restart always ^
    -d postgres
    
if %errorlevel% == 0 (
    echo Default password for 'postgres' is 'Pass123$'. This password must be changed on first use!
)
