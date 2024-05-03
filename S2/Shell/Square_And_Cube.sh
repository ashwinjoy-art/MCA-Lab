#!/usr/bin/bash

echo "Enter a number:"
read number

square=$((number * number))
cube=$((number * number * number))

echo "Square of $number is: $square"
echo "Cube of $number is: $cube"
