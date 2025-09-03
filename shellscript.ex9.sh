#!/bin/bash

# This script is to understand and work with functions
# Function to take folder backup

backup_folder() {
	folder=$1
	backup_name="${folder}_backup_$(date +%F_%H-%M-%S).tar.gz"
	
	if [ -d "$folder" ]; then 
		tar -czf "$backup_name" "$folder"
		echo "Backup created: $backup_name"
	else
		echo "Folder $folder not found"
	fi
}


#Function to log status
log_status() {
	message=$1
	echo "[$(date)] $message" >> ex9_log.txt
}

#Main flow
read -p "Enter folder to backup:" myfolder
backup_folder $myfolder
log_status "Backup attempted for folder:$myfolder"
