#!/usr/bin/bash

echo "Enter the paths of two files:"
read file1 file2

if cmp -s "$file1" "$file2"; then
    echo "Files are identical. Deleting one..."
    rm "$file2"
else
    echo "Files are different."
fi
