#include <stdio.h>
int main() 
{
    int n, num, sum = 0;
    printf("Enter the total number of integers: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++) 
    {
        printf("Enter integer %d: ", i + 1);
        scanf("%d", &num);
        if (num % 2 != 0) 
        {
            sum += num;
        }
    }
    printf("Sum of odd numbers = %d\n", sum);
    return 0;
}
