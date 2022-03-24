@echo off

docker run --name dev-nosql-mongodb ^
	-p 8081:8081 ^
    -p 27017:27017 ^
	-v dev-nosql-mongodb-volume:/data/db ^
    --restart always ^
	-e MONGO_INITDB_ROOT_USERNAME=root ^
    -e MONGO_INITDB_ROOT_PASSWORD=Pass123$ ^
    -itd mongo
    
if %errorlevel% == 0 (
    echo Default password for 'root' is 'Pass123$'. This password must be changed on first use!
)
