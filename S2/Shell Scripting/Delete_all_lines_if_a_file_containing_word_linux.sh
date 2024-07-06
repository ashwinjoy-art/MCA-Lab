#!/usr/bin/bash

echo "Enter the filename:"
read file

if [ -f "$file" ]; then
    sed -i '/linux/d' "$file"
    echo "Lines containing 'linux' removed from $file"
else
    echo "File not found."
fi

