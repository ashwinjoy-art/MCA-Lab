#include <stdio.h>
#include <stdbool.h>
#define MAX 5
int queue[MAX];
int front = -1;
int rear = -1;
bool isFull() 
{
    return rear == MAX - 1;
}
bool isEmpty() {
    return front == -1 && rear == -1;
}
bool isEnd() {
    return isFull() && front == rear;
}
void reset() {
    front = -1;
    rear = -1;
}
void enqueue() {
    int value;
    printf("Enter the number: ");
    scanf("%d", &value);

    if (isEnd()) {
        reset();
    }

    if (isFull()) {
        printf("Queue is full\n");
    } else {
        rear++;
        queue[rear] = value;
    }
}
void dequeue() {
    if (isEmpty()) {
        printf("Queue is empty\n");
    } else {
        printf("%d is dequeued\n", queue[front + 1]);
        front++;
    }
}
void display() {
    if (isEmpty()) {
        printf("Queue is empty\n");
    } else {
        for (int i = front + 1; i <= rear; i++) {
            printf("queue[%d] is: %d\n", i + 1, queue[i]);
        }
    }
}
int main() {
    int opt;
    do {
        printf("\n.............\n");
        printf("1) Enqueue\n");
        printf("2) Dequeue\n");
        printf("3) Display\n");
        printf("0) Quit\n");
        printf("\n.............\n");
        printf("Choose your option: ");
        scanf("%d", &opt);

        switch (opt) {
            case 1:
                enqueue();
                break;
            case 2:
                dequeue();
                break;
            case 3:
                display();
                break;
            case 0:
                printf("Exiting program\n");
                break;
            default:
                printf("Invalid Option! Try Again...\n");
        }
    } while (opt != 0);
    return 0;
}