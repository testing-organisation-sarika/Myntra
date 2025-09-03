#!/bin/bash

# This script is to understand and work with for loop

# Printing numbers using for loop
echo "Printing numbers from 1 to 10:"

for i in {1..10}
do
	echo "$i"
done

# Printing even numbers
echo "Even numbers from 1 to 20"
for i in {1..20}
do
	if [ $((i % 2)) -eq 0 ]; then
		echo "$i is Even"
	fi
done

# Printing all .sh files in current folder
echo ".sh files in this folder:"
for file in *.sh
do
	echo "$file"
done

# Loop to ping multiple websites

for site in google.com github.com openai.com
do
	echo "Pinging $site ...."
	ping -c 1 $site
	echo "------------------"
done 
