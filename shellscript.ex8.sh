#!/bin/bash

# This script is to understand while and until loops
# This script  retries  a service until it is  running

#simulating service status
status="stopped"
count=0

echo "checking service status...."

while [ "$status" != "running" ]
do
	echo "Attempt $((count+1)): Service is not running "
	sleep 2
	
	# simulate condition change after 3 tries
	if [ $count -eq 2 ]; then
		status="running"
	fi
	((count++))
done

echo "Service is running after $count attempts"

# Likewise we can use until loop  

until [ "$status" = "running" ]
do
   echo "Trying..."
   sleep 1
   status="running"
done

# The only key difference btw while and until is: in while loop the  looping stops when the condition is false and in until loop the looping stops when the condition is true 


# Real command example
while ! systemctl is-active --quiet nginx
do
    echo "Nginx not running...retrying"
    sleep 2
done
echo "Nginx is running!"
