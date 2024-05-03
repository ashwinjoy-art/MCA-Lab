#!/usr/bin/bash

echo "Enter four numbers:"
read num1 num2 num3 num4

min=$num1

for num in $num2 $num3 $num4; do
    if [ $num -lt $min ]; then
        min=$num
    fi
done

echo "Minimum value among $num1, $num2, $num3, and $num4 is: $min"
