#include<stdio.h>
int main() 
{
  int arr[50], i, size, choice, index, element;
  printf("Enter number of elements in the array:\n");
  scanf("%d", & size);
  printf("Enter %d elements:\n", size);
  for (i = 0; i < size; i++) 
  {
    scanf("%d", & arr[i]);
  }
  do 
  {
    printf("1. Insert Element\n2. Delete Element\n3. Exit\nEnter your choice (1, 2, or 3):\n");
    scanf("%d", & choice);
    switch (choice) {
    case 1:
      printf("Please enter the index where you want to insert the new element:\n");
      scanf("%d", & index);
      printf("Please enter the value to insert:\n");
      scanf("%d", & element);
      if (index < 0 || index > size) {
        printf("Invalid\n");
        break;
      }
      for (i = size; i >= index; i--) {
        arr[i] = arr[i - 1];
      }
      arr[index] = element;
      size++;
      printf("Resultant array:\n");
      for (i = 0; i < size; i++) {
        printf("%d\n", arr[i]);
      }
      break;
    case 2:
      printf("Please enter the index where you want to delete element:\n");
      scanf("%d", & index);
      if (index < 0 || index >= size) {
        printf("Invalid\n");
        break;
      }
      for (i = index; i < size - 1; i++) {
        arr[i] = arr[i + 1];
      }
      size--;
      printf("Resultant array:\n");
      for (i = 0; i < size; i++) {
        printf("%d\n", arr[i]);
      }
      break;
    case 3:
      printf("Exiting program\n");
      break;
    default:
      printf("Invalid choice\n");
    }
  } while (choice != 3);
  return 0;
}