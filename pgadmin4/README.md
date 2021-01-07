# pgAdmin4

## Information

**Container name:** dev-ui-pgadmin

**Exposed ports:** 5480 </br>
**Restart policy:** Always

**Login:** *`run.sh` script asks you about default email address which is using as login* </br>
**Password:** Pass123$

## Deploy

1. Execute `setup.sh` script;
2. Execute `run.sh` script;
3. Enter email for initial user.

```plain
# Windows Batch
setup.bat && run.bat

# /bin/bash
chmod +x setup.sh && chmod +x run.sh
./setup.sh && ./run.sh
```

## Usage

1. Open http://localhost:5480;
2. Login using email and `Pass123$` as password;
3. Change default password for the account.
