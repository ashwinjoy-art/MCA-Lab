#include <stdio.h>
#define MAX_SIZE 100

struct Node
{
    int data;
    int next;
};

struct Node linkedlist[MAX_SIZE];

int main()
{
    int n;
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    int i;

    for (i = 0; i < n; i++)
    {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &linkedlist[i].data);

        if (i == n - 1)
        {
            linkedlist[i].next = -1;
        }
        else
        {
            linkedlist[i].next = i + 1;
        }
    }

    printf("\nLinked List elements: \n");

    int currentIndex = 0;
    while (currentIndex != -1)
    {
        printf("%d ", linkedlist[currentIndex].data);
        currentIndex = linkedlist[currentIndex].next;
    }

    return 0;
}
