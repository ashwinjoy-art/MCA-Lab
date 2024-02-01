#include <stdio.h>
int main() 
{
    int n, m, num, sumRemainders = 0;
    printf("Enter the total number of integers: ");
    scanf("%d", &n);
    printf("Enter the divisor (m): ");
    scanf("%d", &m);
    for (int i = 0; i < n; i++) 
    {
        printf("Enter integer %d: ", i + 1);
        scanf("%d", &num);
        sumRemainders += num % m;
    }
    printf("Sum of remainders: %d\n", sumRemainders);
    return 0;
}

