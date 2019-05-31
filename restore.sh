#!/bin/bash
user=$(whoami)

sudo tar -xvpzf /home/$user/backup/backup.tar.gz -C /
