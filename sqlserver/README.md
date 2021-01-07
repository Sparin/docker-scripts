# Microsoft SQL Server 2019

## Information

**Container name:** dev-rdbms-sqlserver

**Network:** Default (Bridge) </br>
**Exposed ports:** 1433 </br>
**Restart policy:** Always

**Login:** sa </br>
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

1. Download [SQL Server Management Studio](https://aka.ms/ssmsfullsetup)
2. Connect to `localhost` using `sa` as login and `Pass123$` as password
3. Change default password for `sa`
