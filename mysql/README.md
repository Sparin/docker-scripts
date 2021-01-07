# MySQL

## Information

**Container name:** dev-rdbms-mysql

**Exposed ports:** 3306 </br>
**Restart policy:** Always

**Login:** root </br>
**Password:** Pass123$

## Deploy

1. Execute `setup.sh` script;
2. Execute `run.sh` script.

```plain
# Windows Batch
setup.bat && run.bat

# /bin/bash
chmod +x setup.sh && chmod +x run.sh
./setup.sh && ./run.sh
```

## Usage

1. `docker exec -it dev-rdbms-mysql mysql -u root -p` or download [MySQL Workbench](https://dev.mysql.com/downloads/workbench/);
2. Enter `Pass123$` as password;
3. Change default password for the account.
