#!/usr/bin/bash

echo "Enter a number:"
read number

reverse=$(echo $number | rev)

echo "Reversed number: $reverse"
