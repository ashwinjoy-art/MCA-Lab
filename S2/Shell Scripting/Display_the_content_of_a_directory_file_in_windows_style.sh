#!/usr/bin/bash

echo "Enter the path of the directory:"
read directory

if [ -d "$directory" ];
then
    ls -p "$directory" | sed 's:/$::'
else
    echo "Directory not found."
fi