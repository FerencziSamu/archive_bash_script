#!/bin/bash

user=$(whoami)
input=/
output=/home/ubuntupaszti/backup/backup.tar.gz

ssh ubuntupaszti@192.168.50.167 tar cvpzf - --exclude=/backup --one-file-system / > /home/$user/backup/backup.tar.gz

echo "Backup of $input is complete!"
