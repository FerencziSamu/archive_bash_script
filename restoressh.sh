#!/bin/bash

user1=ubuntupaszti
user2=ubuntupaszti
ip_adress=192.168.50.124

scp $user1@$ip_adress:/home/$user1/backup/backup.tar.gz /home/$user2 && sudo tar -xvpzf /home/$user2/backup.tar.gz -C /

echo "Restore is complete!"

