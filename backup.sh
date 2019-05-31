#!/bin/bash

user=$(whoami)
input=/
output=/backup/backup_base.tar.gz

tar -cvpzf $output --exclude=home/$user/backup --one-file-system $input

echo "Backup of $input is complete!"
