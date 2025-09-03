#!/bin/bash

# This script is to find even or odd,positive or negative,greater than or less than 

# Ask user for number
echo "Enter a number:"
read number 

#Check if  the number is even or odd
if [ $((number % 2)) -eq 0 ]; then 
	echo "$number is Even number"
else
	echo "$number is an Odd number"
fi

#Check if  the number is positive or negative
if [ $number -lt 0 ]; then
        echo "It is a Negative number"
else
        echo "It is a Positive number"
fi

# Check if the number is greater or smaller

#Check if  the number is even or odd
# Read nother number 
echo "Enter another number:"
read number2
if [ $number -gt $number2 ]; then
        echo "$number is Greater than $number2"
else
        echo "$number is Less than $number2"
fi
