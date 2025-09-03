#!/bin/bash
# File & Directory Management Script

echo "Enter directory name to create:"
read dir

# Create directory if it doesn't exist
if [ ! -d "$dir" ]; then
    mkdir "$dir"
    echo "Directory '$dir' created successfully!"
else
    echo "Directory '$dir' already exists!"
fi

# Create a sample file in the directory
touch "$dir/sample.txt"
echo "This is a sample file" > "$dir/sample.txt"

# List files in the directory
echo "Files inside '$dir':"
ls -l "$dir"

# Delete file on user confirmation
echo "Do you want to delete 'sample.txt'? (yes/no)"
read choice
if [ "$choice" == "yes" ]; then
    rm "$dir/sample.txt"
    echo "sample.txt deleted!"
else
    echo "File not deleted."
fi
