#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/apache_backup_$DATE.tar.gz"
LOGFILE="/backups/apache_backup_log.txt"

tar -czf $BACKUP_FILE /etc/httpd /var/www/html 2>/dev/null

echo "Backup created: $BACKUP_FILE" >> $LOGFILE

echo "Verifying backup contents:" >> $LOGFILE
tar -tzf $BACKUP_FILE >> $LOGFILE

echo "-------------------------" >> $LOGFILE
