#!/bin/bash

backupPath=/data/mysql_db/back_up
timestamp=$(date +"%Y%m%d%H")

USERNAME=root
PASSWORD=sempre813!

mysqldump -u${USERNAME} -p${PASSWORD} --all-databases > ${backupPath}/${timestamp}_backup.sql

chmod 777 ${backupPath}/${timestamp}_backup.sql

# nas import
#scp ${backupPath}/${timestamp}_backup.sql wmbio@192.168.0.90:/volume1/Data/DB_backup/
sshpass -p 'Wmlswkdia1!.' scp ${backupPath}/${timestamp}_backup.sql jinoo@192.168.0.90:/volume1/db_bakcup/
