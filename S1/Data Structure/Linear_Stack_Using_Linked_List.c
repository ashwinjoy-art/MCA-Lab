#include <stdio.h>
#include <stdlib.h>
struct Node {
int data;
struct Node* next;
};
struct Stack {
struct Node* top;
};
struct Node* createNode(int data) {
struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
if (newNode == NULL) {
printf("Memory allocation failed.\n");
exit(EXIT_FAILURE);
}
newNode->data = data;
newNode->next = NULL;
return newNode;
}
void initializeStack(struct Stack* stack) {
stack->top = NULL;
}
int isEmpty(struct Stack* stack) {
return (stack->top == NULL);
}
void push(struct Stack* stack, int data) {
struct Node* newNode = createNode(data);
newNode->next = stack->top;
stack->top = newNode;
printf("%d pushed onto the stack.\n", data);
}
int pop(struct Stack* stack) {
if (isEmpty(stack)) {
printf("Stack underflow.\n");
exit(EXIT_FAILURE);
}
struct Node* temp = stack->top;
int poppedData = temp->data;
stack->top = temp->next;
free(temp);
return poppedData;
}
void display(struct Stack* stack) {
if (isEmpty(stack)) {
printf("Stack is empty.\n");
return;
}
printf("Stack elements: ");
struct Node* current = stack->top;
while (current != NULL) {
printf("%d ", current->data);
current = current->next;
}
printf("\n");
}
int main() {
struct Stack stack;
initializeStack(&stack);
int choice, data;
do {
printf("\nLinear Stack Linked List Operations:\n");
printf("1. Push\n");
printf("2. Pop\n");
printf("3. Display\n");
printf("4. Exit\n");
printf("Enter your choice: ");
scanf("%d", &choice);
switch (choice) {
case 1:
printf("Enter the data to push onto the stack: ");
scanf("%d", &data);
push(&stack, data);
break;
case 2:
if (!isEmpty(&stack))
printf("Popped element: %d\n", pop(&stack));
break;
case 3:
display(&stack);
break;
case 4:
printf("Exiting the program.\n");
break;
default:
printf("Invalid choice. Please enter a valid option.\n");
}
} while (choice != 4);
return 0;
}