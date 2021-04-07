# TokuDB-mariadb

# **Docker compose run**
```PASSWORD=sempre813! docker-compose up -d .```

    # SET ENGINE TokuDB
    mysql -u root -p > set global default_storage_engine=TokuDB; 

    # CREATE TABLE
    source /data/mysql_db/script/create_table.sql

    # CREATE TRIGGER
    source /data/mysql_db/script/trigger.sql

    # INSERT PREVENT RECORD
    source /data/mysql_db/script/prevent_insert.sql
