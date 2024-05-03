#!/usr/bin/bash

echo "Enter the path of the file:"
read file

grep -v "linux" "$file" > "$file.tmp"
mv "$file.tmp" "$file"

echo "Lines containing the word 'linux' have been deleted from '$file'."
