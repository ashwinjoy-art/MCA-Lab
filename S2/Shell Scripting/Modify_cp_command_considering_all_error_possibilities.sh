#!/usr/bin/bash

echo "Enter source and destination file paths:"
read source_file dest_file

if [ ! -f "$source_file" ]; then
    echo "Error: Source file does not exist."
    exit 1
fi

if ! cp "$source_file" "$dest_file"; then
    echo "Error: Failed to copy the file."
    exit 1
fi

echo "File copied successfully."
