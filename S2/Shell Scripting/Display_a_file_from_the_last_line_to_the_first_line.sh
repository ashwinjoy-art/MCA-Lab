#!/usr/bin/bash

echo "Enter the path of the file:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

tac "$file"
