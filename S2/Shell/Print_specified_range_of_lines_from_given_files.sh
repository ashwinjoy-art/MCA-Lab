#!/usr/bin/bash

start_line=$1
end_line=$2
shift 2

for file in "$@"; do
    [ ! -f "$file" ] && { echo "Error: File '$file' not found."; continue; }

    sed -n "${start_line},${end_line}p" "$file"
done
