#!/bin/bash

input=/
from_destination=/home/ubuntupaszti/backup/backup_base.tar.gz
to_destination=/home/ubuntupaszti/backup
host_address=ubuntu-2
username=ubuntupaszti

tar -cvpzf $from_destination --exclude=$to_destination --one-file-system $input

ssh-keygen -R $host_address

scp $from_destination $username@$host_address:$to_destination
