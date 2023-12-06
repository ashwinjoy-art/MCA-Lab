#include <stdio.h>
#include <stdlib.h>
enum Color { RED, BLACK };
struct Node 
{
    int data;
    enum Color color;
    struct Node *left, *right, *parent;
};
struct Node *root = NULL;
// Function prototypes
void insertRBTree(int key);
void fixInsertRBTree(struct Node *x);
void rotateLeft(struct Node *x);
void rotateRight(struct Node *x);
void printRBTree(struct Node *root);
int main() 
{
    int key;
    printf("Enter elements to insert into Red-Black Tree (Enter -1 to stop):\n");
    while (1) 
    {
        scanf("%d", &key);
        if (key == -1)
            break;
        insertRBTree(key);
        printf("Inserted: %d\n", key);
        printRBTree(root);
        printf("\n");
    }
    return 0;
}
// Helper function to create a new node
struct Node *createNode(int key) 
{
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = key;
    newNode->color = RED;
    newNode->left = newNode->right = newNode->parent = NULL;
    return newNode;
}
// Helper function to perform left rotation
void rotateLeft(struct Node *x) 
{
    struct Node *y = x->right;
    x->right = y->left;
    if (y->left != NULL)
        y->left->parent = x;
    y->parent = x->parent;
    if (x->parent == NULL)
        root = y;
    else if (x == x->parent->left)
        x->parent->left = y;
    else
        x->parent->right = y;
    y->left = x;
    x->parent = y;
}
// Helper function to perform right rotation
void rotateRight(struct Node *x) 
{
    struct Node *y = x->left;
    x->left = y->right;
    if (y->right != NULL)
        y->right->parent = x;
    y->parent = x->parent;
    if (x->parent == NULL)
        root = y;
    else if (x == x->parent->left)
        x->parent->left = y;
    else
        x->parent->right = y;
    y->right = x;
    x->parent = y;
}
// Helper function to fix the Red-Black Tree after insertion
void fixInsertRBTree(struct Node *x) {
    while (x != root && x->parent->color == RED) 
    {
        if (x->parent == x->parent->parent->left) 
        {
            struct Node *y = x->parent->parent->right;
            if (y != NULL && y->color == RED) 
            {
                x->parent->color = BLACK;
                y->color = BLACK;
                x->parent->parent->color = RED;
                x = x->parent->parent;
            }
            else
            {
                if (x == x->parent->right) 
                {
                    x = x->parent;
                    rotateLeft(x);
                }
                x->parent->color = BLACK;
                x->parent->parent->color = RED;
                rotateRight(x->parent->parent);
            }
        } 
        else 
        {
            struct Node *y = x->parent->parent->left;
            if (y != NULL && y->color == RED) 
            {
                x->parent->color = BLACK;
                y->color = BLACK;
                x->parent->parent->color = RED;
                x = x->parent->parent;
            } 
            else 
            {
                if (x == x->parent->left) 
                {
                    x = x->parent;
                    rotateRight(x);
                }
                x->parent->color = BLACK;
                x->parent->parent->color = RED;
                rotateLeft(x->parent->parent);
            }
        }
    }
    root->color = BLACK;
}
// Insert a key into the Red-Black Tree
void insertRBTree(int key) 
{
    struct Node *newNode = createNode(key);
    struct Node *y = NULL;
    struct Node *x = root;
    while (x != NULL) 
    {
        y = x;
        if (newNode->data < x->data)
            x = x->left;
        else
            x = x->right;
    }
    newNode->parent = y;
    if (y == NULL)
        root = newNode;
    else if (newNode->data < y->data)
        y->left = newNode;
    else
        y->right = newNode;
    fixInsertRBTree(newNode);
}
// Helper function to print the Red-Black Tree (in-order)
void printRBTree(struct Node *root) 
{
    if (root != NULL) 
    {
        printRBTree(root->left);
        printf("(%d, %s) ", root->data, (root->color == RED) ? "RED" : "BLACK");
        printRBTree(root->right);
}
}