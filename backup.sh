#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
# / backup whole sytem 
input=/ 
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

echo "Start backup script, show only errors:" 

# dev, proc, sys should not be backed up! --one-file-system creates that 
sudo tar -cvpzf $output --exclude=/backup --exclude="swapfile" \
--exclude=/home/origin/Documentsarchive_bash_script/ --one-file-system $input \
3>&1 1>/backup/backup_stdout.log 2>&3- | tee -a /backup/backup_stderr.log
# > >(tee stdout.logfile) 2> >(tee stderr.logfile >&2) 
#|& tee /backup/backup.log 


# To check the result and save it into a txt 
src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files" >> /backup/backup_result.txt
echo "Directories to be included: $src_directories" >> /backup/backup_result.txt 
echo "Files archived: $arch_files" >> /backup/backup_result.txt
echo "Directories archived: $arch_directories" >> /backup/backup_result.txt

if [ $src_files -eq $arch_files ]; then
       echo "Backup of $input completed!" >> /backup/backup_result.txt
       echo "Details about the output backup file:" >> /backup/backup_result.txt
       ls -l $output
else
       echo "Backup of $input is failed!" >> /backup/backup_result.txt
fi