#!/usr/bin/bash

echo "Enter three numbers:"
read a b c

if [ $((a + b)) -gt $c ] && [ $((a + c)) -gt $b ] && [ $((b + c)) -gt $a ]; then
    echo "The numbers $a, $b, and $c can form the sides of a triangle."
else
    echo "The numbers $a, $b, and $c cannot form the sides of a triangle."
fi
