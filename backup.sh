#!/bin/bash

user=ubuntupaszti
input=/
output=/home/$user/backup.tar.gz

tar -cvpzf $output --exclude=home/$user/backup.tar.gz --one-file-system $input

echo "Backup of $input is complete!"



