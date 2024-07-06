#!/usr/bin/bash

echo "Enter the file path:"
read file
echo "Enter the starting line number:"
read start
echo "Enter the ending line number:"
read end

if [ -f "$file" ];
then
    sed -n "${start},${end}p" "$file"
else
    echo "File not found."
fi
