#!/usr/bin/bash

#Whether two numbers are equal or no

echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

if [ "$num1" -eq "$num2" ]; 
then
    echo "Both numbers are equal"
else
    echo "$num1 is not equal to $num2"
fi