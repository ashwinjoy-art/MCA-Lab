#!/usr/bin/bash

echo "Enter the path of the directory:"
read directory

ls -l --color=never "$directory" | awk '{printf "%-30s %10s %10s %s\n", $9, $5, $6, $7}'
