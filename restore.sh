#!/bin/bash

sudo tar -xvpzf /backup/backup_base.tar.gz -C / \
3>&1 1>/backup/restore_stdout.log 2>&3- | tee -a /backup/restore_stderr.log

