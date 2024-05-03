#!/usr/bin/bash

echo "Enter the value of N:"
read N

sum=0

for ((i=1; i<=N; i++)); do
    sum=$((sum + i))
done

echo "Sum of first $N natural numbers is: $sum"
