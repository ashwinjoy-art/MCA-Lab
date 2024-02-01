#include <stdio.h>
int addRemainders(int n, int m) 
{
    int num, sumRemainders = 0;
    for (int i = 0; i < n; i++) 
    {
        printf("Enter integer %d: ", i + 1);
        scanf("%d", &num);
        sumRemainders += num % m;
    }
    return sumRemainders;
}
int main() 
{
    int n, m;
    printf("Enter the total number of integers: ");
    scanf("%d", &n);
    printf("Enter the divisor (m): ");
    scanf("%d", &m);
    int sumOfRemainders = addRemainders(n, m);
    printf("Sum of remainders: %d\n", sumOfRemainders);
    return 0;
}
