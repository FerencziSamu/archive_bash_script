#!/bin/bash

tar -zcvp /backup/fullbackup.tar.gz --directory=/ --exclude=backup --exclude=proc/kcore . | split -d -b 500m - /backup/fullbackup.tar.gz