#include <stdio.h>
#define MAX_SIZE 100
struct LinearList 
{
    int array[MAX_SIZE];
    int size;
};
void initializeList(struct LinearList *list) 
{
    list->size = 0;
}
void insertElement(struct LinearList *list, int position, int value) 
{
    if (list->size < MAX_SIZE && position >= 0 && position <= list->size) 
    {
        for (int i = list->size; i > position; i--) 
        {
            list->array[i] = list->array[i - 1];
        }
        list->array[position] = value;
        list->size++;
        printf("%d inserted at position %d.\n", value, position);
    } 
    else 
    {
        printf("Invalid position or list is full. Cannot insert.\n");
    }
}
void deleteElement(struct LinearList *list, int position) 
{
    if (position >= 0 && position < list->size) 
    {
        int deletedValue = list->array[position];
        for (int i = position; i < list->size - 1; i++) 
        {
            list->array[i] = list->array[i + 1];
        }
        list->size--;
        printf("%d deleted from position %d.\n", deletedValue, position);
    } 
    else 
    {
        printf("Invalid position. Cannot delete.\n");
    }
}
void storeElement(struct LinearList *list, int value) 
{
    if (list->size < MAX_SIZE) 
    {
        list->array[list->size] = value;
        list->size++;
        printf("%d stored at the end.\n", value);
    } 
    else 
    {
        printf("List is full. Cannot store.\n");
    }
}
void sortList(struct LinearList *list) 
{
    for (int i = 0; i < list->size - 1; i++) 
    {
        for (int j = 0; j < list->size - i - 1; j++) 
        {
            if (list->array[j] > list->array[j + 1]) 
            {
                int temp = list->array[j];
                list->array[j] = list->array[j + 1];
                list->array[j + 1] = temp;
            }
        }
    }
    printf("List sorted in ascending order.\n");
}
void displayList(struct LinearList *list) 
{
    if (list->size == 0) 
    {
        printf("List is empty.\n");
    } 
    else 
    {
        printf("Elements in the list: ");
        for (int i = 0; i < list->size; i++) 
        {
            printf("%d ", list->array[i]);
        }
        printf("\n");
    }
}
int main() 
{
    struct LinearList myList;
    initializeList(&myList);
    int choice, position, value;
    do 
    {
        printf("\n1) Create List\n");
        printf("2) Add/Insert Element\n");
        printf("3) Delete Element\n");
        printf("4) Store Element\n");
        printf("5) Sort the List\n");
        printf("6) Display List\n");
        printf("7) Quit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                initializeList(&myList);
                printf("List created.\n");
                break;
            case 2:
                printf("Enter position to insert: ");
                scanf("%d", &position);
                printf("Enter value to insert: ");
                scanf("%d", &value);
                insertElement(&myList, position, value);
                break;
            case 3:
                printf("Enter position to delete: ");
                scanf("%d", &position);
                deleteElement(&myList, position);
                break;
            case 4:
                printf("Enter value to store: ");
                scanf("%d", &value);
                storeElement(&myList, value);
                break;
            case 5:
                sortList(&myList);
                break;
            case 6:
                displayList(&myList);
                break;
            case 7:
                printf("Exiting program.\n");
                break;
            default:
                printf("Invalid choice. Try again.\n");
        }
    } while (choice != 7);
    return 0;
}
