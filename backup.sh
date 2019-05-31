#!/bin/bash

user=$(whoami)
input=/
<<<<<<< HEAD
output=/backup/backup_base.tar.gz

# The function total_files reports a total number of files for a given directory.
function total_files {
       find $1 -type f | wc -l
}

# The function total_directories reports a total number of directories
# for a given directory.
function total_directories {
       find $1 -type d | wc -l
}
function total_archived_directories {
       tar -tzf $1 | grep  /$ | wc -l
}

function total_archived_files {
       tar -tzf $1 | grep -v /$ | wc -l
}

tar -cvpzf $output --exclude=/backup --one-file-system $input 
=======
output=/home/$user/backup/backup.tar.gz

tar -cvpzf $output --exclude=home/$user/backup --one-file-system $input
>>>>>>> 6193ba03f91877921cd7178c93aa3c56698227bf

echo "Backup of $input is complete!"



<<<<<<< HEAD
if [ $src_files -eq $arch_files ]; then
       echo "Backup of $input completed!"
       echo "Details about the output backup file:"
       ls -l $output
else
       echo "Backup of $input is failed!"
fi
=======
>>>>>>> 6193ba03f91877921cd7178c93aa3c56698227bf
