#!/bin/bash

# This script is to backup folders with date

# Folder to backup
echo "Enter the folder name to backup"
read folder

# Check if folder exists or not
if [ -d "$folder" ]; then
	# Create backup file name with date 
	backup_file="${folder}_backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
	# Create the backup
	tar -czf "$backup_file" "$folder"

	# Move to destination folder
	destination="backups" #Add destination
	mkdir -p "$destination" # Create it if doesn't exists
	mv "$backup_file" "$destination/" #move backup file into that folder
	echo "Backup completed:$destination/$backup_file"
else
	echo "Folder ${folder} not found!"
fi 
