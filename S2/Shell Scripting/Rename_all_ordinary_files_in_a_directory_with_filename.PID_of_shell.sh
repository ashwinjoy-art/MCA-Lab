#!/usr/bin/bash

for file in *; do
    if [ -f "$file" ]; then
        mv "$file" "$file.$$"
        echo "Renamed $file to $file.$$"
    fi
done

