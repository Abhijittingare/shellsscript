#!/bin/bash

# Check if a filename is provided
if [ $# -eq 0 ]; then
    echo "Please provide a filename."
    exit 1
fi

filename=$1
backup_file="${filename}_$(date +%Y%m%d%H%M%S)"

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Create the backup file
cp "$filename" "$backup_file"
echo "Backup created: $backup_file"
