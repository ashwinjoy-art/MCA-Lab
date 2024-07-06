#!/usr/bin/bash

echo "Enter the path of the first file:"
read file1
echo "Enter the path of the second file:"
read file2

if cmp -s "$file1" "$file2"; then
    echo "Files are identical. Deleting one..."
    rm "$file2"
else
    echo "Files are different."
fi
