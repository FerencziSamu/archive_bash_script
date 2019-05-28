#!/bin/bash

tar -zcvpf /backup/fullbackup_one_file.tar.gz --directory=/ --exclude=backup --exclude=proc/kcore .