#!/bin/bash

CUR_DATE=`date "+%Y%m%d"`
SQL_FILE="backup_$CUR_DATE.sql"
TAR_FILE="backup_$CUR_DATE.tar.gz"

mysqldump -h $MYSQL_HOST -P $MYSQL_PORT -u $MYSQL_USER -p $MYSQL_USER_PASSWORD postlude > /$SQL_FILE

tar cvf $MOUNT_PATH/$TAR_FILE /$SQL_FILE
