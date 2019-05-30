#!/bin/bash

user=ubuntupaszti
input=/
output=/home/$user/backup.tar.gz

tar -cvpzf $output --exclude=home/$user/backup.tar.gz --one-file-system $input \
3>&1 1>/backup/backup_stdout.log 2>&3- | tee -a /backup/backup_stderr.log

echo "Backup of $input is complete!"



