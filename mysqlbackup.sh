#!/bin/bash

mysqldump -h db_host.rds.aws.com -u dbuser -p welcome1 db_flipkart > /hbackup/db_flipkart.sql
