#include <stdio.h>
#include <stdlib.h>
struct Node {
int data;
struct Node* next;
};
struct Queue {
struct Node *front, *rear;
};
struct Node* createNode(int data) {
struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
if (newNode == NULL) {
printf("Memory allocation failed\n");
exit(1);
}
newNode->data = data;
newNode->next = NULL;
return newNode;
}
struct Queue* initializeQueue() {
struct Queue* queue = (struct Queue*)malloc(sizeof(struct Queue));
if (queue == NULL) {
printf("Memory allocation failed\n");
exit(1);
}
queue->front = queue->rear = NULL;
return queue;
}
int isEmpty(struct Queue* queue) {
return (queue->front == NULL);
}
void enqueue(struct Queue* queue, int data) {
    struct Node* newNode = createNode(data);
if (isEmpty(queue)) {
queue->front = queue->rear = newNode;
} else {
queue->rear->next = newNode;
queue->rear = newNode;
}
printf("Enqueued: %d\n", data);
}
int dequeue(struct Queue* queue) {
if (isEmpty(queue)) {
printf("Queue is empty, cannot dequeue\n");
exit(1);
}
struct Node* temp = queue->front;
int data = temp->data;
if (queue->front == queue->rear) {
queue->front = queue->rear = NULL;
} else {
queue->front = queue->front->next;
}
free(temp);
return data;
}
void display(struct Queue* queue) {
if (isEmpty(queue)) {
printf("Queue is empty\n");
return;
}
struct Node* current = queue->front;
printf("Queue elements: ");
while (current != NULL) {
    printf("%d ", current->data);
current = current->next;
}
printf("\n");
}
int main() {
struct Queue* queue = initializeQueue();
int choice, element;
do {
printf("\n1. Enqueue\n");
printf("2. Dequeue\n");
printf("3. Display\n");
printf("4. Quit\n");
printf("Enter your choice: ");
scanf("%d", &choice);
switch (choice) {
case 1:
printf("Enter element to enqueue: ");
scanf("%d", &element);
enqueue(queue, element);
break;
case 2:
if (!isEmpty(queue)) {
element = dequeue(queue);
printf("Dequeued: %d\n", element);
} else {
printf("Queue is empty, cannot dequeue\n");
}
break;
case 4:
printf("Exiting the program\n");
break;
default:
printf("Invalid choice\n");
}
} while (choice != 4);
return 0;
}