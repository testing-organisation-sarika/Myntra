#!/bin/bash 

# Script for cron job

echo  "Script ran at :$(date)"  >> /home/harsh/Devops/cron_output.txt

#Open cron tab --> crontab -e
#Add a cron job  -->  * * * * */full/path/to/log_time.sh
# wait for 2-3 mins and check the cron_output.txt using cat command
