#!/usr/bin/bash

#Arithmetic operations


echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

echo "SELECT ANY OPERATIONS BELOW"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
echo -n "Enter your menu choice [1-5]: "

while true; 
do
    read choice
    case $choice in
        1) sum=$((num1+num2))
           echo "Sum = $sum";;
        2) difference=$((num1-num2))
           echo "Difference = $difference";;
        3) multiplication=$((num1*num2))
           echo "Multiplication = $multiplication";;
        4) division=$((num1/num2))
           echo "Division = $division";;
        5) echo "Quitting ..."
           exit;;
        *) echo "Invalid option";;
    esac
    echo -n "Enter your menu choice [1-5]: "
done