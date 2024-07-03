#!/usr/bin/bash

echo "Enter the path of the file:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

num_lines=$(wc -l < "$file")
num_words=$(wc -w < "$file")

echo "Number of lines in $file: $num_lines"
echo "Number of words in $file: $num_words"
