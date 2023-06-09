#!/bin/sh

# Download the access log file
#wget "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/ETL%20using%20shell%20scripting/web-server-access-log.txt.gz"

#Unzip the file
#gunzip  -f web-server-access-log.txt.gz

#cutting data until index 4 by #
cut -d"#" -f1-4 web-server-access-log.txt > extracted-data.txt

# read the extracted data and replace the colons with commas.
tr "#" "," < extracted-data.txt > transformed-data.csv

#Loading data into table access_log
echo "\c template1;\COPY access_log  FROM '/home/project/transformed-data.csv' DELIMITERS ',' CSV HEADER;" | psql --username=postgres --host=localhost

#Check by querying into the table
echo '\c template1;\\SELECT * FROM access_log;' | psql --username=postgres --host=localhost
