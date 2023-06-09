# ETL_Shell-Script

## Basic of ETL Workflow using Shell Script

The workflow of this project is :

1. Loading raw data
2. Unzip the data
3. Reformat selected columns
4. Reformat delimiters
5. Write to Table

### 1. Create Postgresql Table

Use postgresql, login as credentials.
```
psql --username=postgres --host=localhost
```

Connect the database_name
```
\c database_name
```

Create Table
```
CREATE TABLE access_log(timestamp TIMESTAMP, latitude float, longitude float, visitor_id char(37));
```

### 2. Run the shell Script

run the following bash script
```
bash cp-access-log.sh
```

