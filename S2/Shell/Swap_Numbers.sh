#!/usr/bin/bash

#Swap two numbers

echo "Enter the First Numbers: "
read num1
echo "Enter the Second Numbers: "
read num2

temp=$num1
num1=$num2
num2=$temp

echo "Swapped values: num1=$num1, num2=$num2"

