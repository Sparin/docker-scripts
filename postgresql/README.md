# PostgreSQL

## Information

**Container name:** dev-rdbms-postgres

**Exposed ports:** 5432 </br>
**Restart policy:** Always

**Login:** postgres </br>
**Password:** Pass123$

## Deploy

1. Execute `setup.sh` script
2. Execute `run.sh` script

```plain
# Windows Batch
setup.bat && run.bat

# /bin/bash
chmod +x setup.sh && chmod +x run.sh
./setup.sh && ./run.sh
```

## Usage

1. Download [pgAdmin](https://www.pgadmin.org/download/) or deploy PgAdmin4 via [docker-scripts](https://github.com/Sparin/docker-scripts/tree/master/pgadmin4)
2. Connect to `localhost` using `postgres` as login and `Pass123$` as password
3. Change default password for `postgres`
