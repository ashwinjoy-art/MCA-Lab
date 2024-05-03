#!/usr/bin/bash

echo "Enter the word to count:"
read word

total_count=0

for file in "$@"; do
    if [ -f "$file" ]; then
        count=$(grep -o "\<$word\>" "$file" | wc -l)
        total_count=$((total_count + count))
        echo "Occurrences of '$word' in '$file': $count"
    else
        echo "Error: File '$file' not found."
    fi
done

echo "Total occurrences of '$word' in all files: $total_count"
