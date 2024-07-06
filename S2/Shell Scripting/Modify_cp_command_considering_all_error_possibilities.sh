#!/usr/bin/bash

echo "Enter the source file path:"
read source_file
echo "Enter the destination file path:"
read dest_file

if [ ! -f "$source_file" ]; then
    echo "Error: Source file does not exist."
    exit 1
fi

if [ -e "$dest_file" ]; then
    echo "Error: Destination file '$dest_file' already exists."
    exit 1
fi

if ! cp "$source_file" "$dest_file"; then
    echo "Error: Failed to copy the file."
    exit 1
fi

echo "File copied successfully."
