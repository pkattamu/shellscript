#!/bin/bash
v_username=$( cat cred | grep username|awk -F"=" '{print $2}')
v_password=$( cat cred | grep password|awk -F"=" '{print $2}')
v_dbHost=db_host.rds.aws.com
v_dbName=$1
echo "mysqldump -h $v_dbHost -u $v_username -p $v_password $v_dbName > /hbackup/$v_dbName.sql"
