#!/usr/bin/bash

pid=$$

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

cd "$1" || exit 1

for file in *; do
    if [ -f "$file" ]; then
        mv "$file" "${file}.${pid}"
        echo "Renamed $file to ${file}.${pid}"
    fi
done

echo "All files renamed successfully."
