#!/usr/bin/bash

#Words_And_Lines_in_file
#wc -m for number of letters

echo "Enter the file name:"
read file_name

if [ -f "$file_name" ]; then
    num_words=$(wc -w < "$file_name")
    num_lines=$(wc -l < "$file_name")
    echo "Number of words in $file_name: $num_words"
    echo "Number of lines in $file_name: $num_lines"
else
    echo "File not found."
fi


