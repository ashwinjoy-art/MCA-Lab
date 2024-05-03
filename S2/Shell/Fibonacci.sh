#!/usr/bin/bash

echo "Enter the number of terms in Fibonacci series:"
read num_terms

a=0
b=1

echo "Fibonacci series up to $num_terms terms:"
echo -n "$a $b "

for ((i=2; i<num_terms; i++)); do
    fib=$((a + b))
    echo -n "$fib "
    a=$b
    b=$fib
done

echo ""
