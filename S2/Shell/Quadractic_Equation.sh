#!/usr/bin/bash

echo "Enter the coefficients (a, b, c) of the quadratic equation (ax^2 + bx + c = 0):"
read a b c

discriminant=$((b*b - 4*a*c))

if [ $discriminant -gt 0 ]; then
    echo "Roots are real and different."
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2*$a)" | bc)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2*$a)" | bc)
    echo "Root 1 = $root1"
    echo "Root 2 = $root2"
elif [ $discriminant -eq 0 ]; then
    echo "Roots are real and same."
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2*$a)" | bc)
    echo "Root 1 = Root 2 = $root1"
else
    echo "Roots are complex."
    realPart=$(echo "scale=2; -$b / (2*$a)" | bc)
    imaginaryPart=$(echo "scale=2; sqrt(-$discriminant) / (2*$a)" | bc)
    echo "Root 1 = $realPart + i$imaginaryPart"
    echo "Root 2 = $realPart - i$imaginaryPart"
fi
