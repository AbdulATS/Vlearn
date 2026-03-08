#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"
LOGFILE="/backups/nginx_backup_log.txt"

tar -czf $BACKUP_FILE /etc/nginx /usr/share/nginx/html 2>/dev/null

echo "Backup created: $BACKUP_FILE" >> $LOGFILE

echo "Verifying backup contents:" >> $LOGFILE
tar -tzf $BACKUP_FILE >> $LOGFILE

echo "-------------------------" >> $LOGFILE
