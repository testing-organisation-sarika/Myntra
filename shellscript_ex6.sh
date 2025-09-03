#!/bin/bash

# This script is to work with switch case 

# While loop is used to loop through the switch case until exit

while true 
do 
echo "DevOps Menu:"
echo "1.Start Service"
echo "2.Stop Service"
echo "3.Check Status"
echo "4.Exit"

echo ""
# Read with -p is used to give prompt message before read
read -p "Choose an option (1-4): " choice

case $choice in
    1)
	echo "Starting service..."
        # Simulate start
        sleep 1
        echo "Service started successfully."
        ;;
    2)
        echo " Stopping service..."
        sleep 1
        echo "Service stopped successfully."
        ;;
    3)
        echo " Checking service status..."
        sleep 1
        echo "Service is running."
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo " Invalid option. Please choose between 1 to 4."
        ;;
esac
done
