#!/usr/bin/bash

while (( "$#" )); do
    cp "$1" "$2"
    echo "Copied '$1' to '$2'."
    shift 2
done
