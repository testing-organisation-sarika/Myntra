#!/bin/bash

#  This script is used to check the file and directory  existence and the file is empty or not 

# -d is used for finding the directory 
# Ask user to enter the directory
echo "Enter your directory  name to check:"
read directory

# Check if the directory exists or not 
if [ -d "$directory" ]; then
	echo "The directory '$directory' exists."
else 
	echo "The directory '$directory' does not exist."
fi


# -f  is used for finding the  file

echo "Enter your file name to check:"
read file

# Check if the file exists or not
if [ -f "$file" ]; then
        echo "The file '$file' exists."
else
        echo "The file '$file' does not exist."
fi
 
# use -s to check the fie exists and not empty
 
if [ -s "$file" ]; then
        echo "The file '$file' is not empty."
else
        echo "The file '$file' is empty."
fi
