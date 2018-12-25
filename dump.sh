#!/usr/bin/env bash
DATE=`date '+%Y-%m-%d-%H-%M-%S'`
echo $DATE
mysqldump -uroot -p$MYSQL_PASSWORD --flush-privileges --routines --all-databases > "/dumps/backup_$DATE.sql"
