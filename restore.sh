#!/bin/bash

user=ubuntupaszti

sudo tar -xvpzf /home/$user/backup.tar.gz -C / \
3>&1 1>/backup/restore_stdout.log 2>&3- | tee -a /backup/restore_stderr.log

echo "Restore is complete!"


