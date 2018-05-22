#!/bin/bash
# Created 5/20/2018
# Backup everything in ~/Projects to $BACKUP_DIR

DATE=$(date +%Y-%m-%d)
BACKUP_DIR=$HOME/project_backups/$DATE

mkdir -p $BACKUP_DIR 

for project in $@; do
	echo copy $project
	cp -r ~/Projects/$project $BACKUP_DIR/
done
