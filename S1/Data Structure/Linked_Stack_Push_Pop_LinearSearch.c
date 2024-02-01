#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
struct node 
{
    int data;
    struct node *next;
};
typedef struct node node;
node *head;
void push() 
{
    int data;
    node *temp, *pre;
    printf("\nEnter value: ");
    scanf("%d", &data);
    temp = (node *)malloc(sizeof(node));
    temp->data = data;
    if (head == NULL) 
    {
        head = temp;
        head->next = NULL;
    } else 
    {
        pre = head;
        while (pre->next != NULL) 
        {
            pre=pre->next;
        }
        pre->next=temp;
        temp->next=NULL;
    }
}
void pop() 
{
    node*temp;
    temp=head;
    if (head==NULL) 
    {
        printf("\nStack is Empty \n");
    } 
    else 
    {
        while (temp->next->next != NULL) 
        {
            temp=temp->next;
        }
        temp->next=NULL;
    }
}
void linearSearch(int target) 
{
    node*temp;
    temp=head;
    int count=1;
    bool found=false;
    if (head == NULL) 
    {
        printf("\nStack is Empty \n");
    }
    else 
    {
        while (temp != NULL) 
        {
            if (temp->data == target) 
            {
                printf("Element %d found at position %d\n", target, count);
                found = true;
            }
            temp = temp->next;
            count++;
        }
        if(!found) 
        {
            printf("Element %d not found in the stack\n", target);
        }
    }
}
void display() 
{
    node *temp;
    int count = 1;
    temp = head;
    if (head == NULL) 
    {
        printf("\nList is Empty \n");
    }
    else 
    {
        while (temp->next != NULL) 
        {
            printf("List [%d] : %d\n", count, temp->data);
            temp = temp->next;
            count++;
        }
        printf("List [%d] : %d\n", count, temp->data);
    }
}
int main() 
{
    int opt, target;
    do 
    {
        printf("\n..................\n");
        printf("1)PUSH\n");
        printf("2)POP\n");
        printf("3)LINEAR SEARCH\n");
        printf("4)DISPLAY\n");
        printf("5)QUIT");
        printf("\n..................\n");
        printf("Choose your option : ");
        scanf("%d", &opt);
        switch (opt) 
        {
            case 1:
                push();
                break;
            case 2:
                pop();
                break;
            case 3:
                printf("\nEnter the element to search: ");
                scanf("%d", &target);
                linearSearch(target);
                break;
            case 4:
                display();
                break;
            case 5:
                exit(0);
            default:
                printf("\nInvalid Operation! Try Again... \n");
        }
    }
    while (1);
    return 0;
}
