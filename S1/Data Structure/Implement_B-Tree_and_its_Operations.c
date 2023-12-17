#include <stdio.h>
#include <stdlib.h>

#define DEGREE 3

// Structure for a B-tree node
struct BTreeNode {
    int *keys;
    struct BTreeNode **children;
    int numKeys;
    int isLeaf;
};

struct BTreeNode *root = NULL;

// Function prototypes
struct BTreeNode *createNode(int isLeaf);
void splitChild(struct BTreeNode *x, int i, struct BTreeNode *y);
void insertNonFull(struct BTreeNode *x, int key);
void insert(int key);
void printBTree(struct BTreeNode *root, int level);

int main() {
    int key;

    printf("Enter elements to insert into B-tree (Enter -1 to stop):\n");

    while (1) {
        scanf("%d", &key);

        if (key == -1)
            break;

        insert(key);
        printf("Inserted: %d\n", key);
        printBTree(root, 0);
        printf("\n");
    }

    return 0;
}

// Helper function to create a new B-tree node
struct BTreeNode *createNode(int isLeaf) {
    struct BTreeNode *newNode = (struct BTreeNode *)malloc(sizeof(struct BTreeNode));
    newNode->keys = (int *)malloc(sizeof(int) * (2 * DEGREE - 1));
    newNode->children = (struct BTreeNode **)malloc(sizeof(struct BTreeNode *) * (2 * DEGREE));
    newNode->numKeys = 0;
    newNode->isLeaf = isLeaf;
    return newNode;
}

// Helper function to insert a key into a non-full B-tree node
void insertNonFull(struct BTreeNode *x, int key) {
    int i = x->numKeys - 1;

    if (x->isLeaf) {
        while (i >= 0 && key < x->keys[i]) {
            x->keys[i + 1] = x->keys[i];
            i--;
        }

        x->keys[i + 1] = key;
        x->numKeys++;
    } else {
        while (i >= 0 && key < x->keys[i])
            i--;

        i++;

        if (x->children[i]->numKeys == (2 * DEGREE - 1)) {
            splitChild(x, i, x->children[i]);

            if (key > x->keys[i])
                i++;
        }

        insertNonFull(x->children[i], key);
    }
}

// Helper function to insert a key into the B-tree
void insert(int key) {
    if (root == NULL) {
        root = createNode(1);
        root->keys[0] = key;
        root->numKeys = 1;
    } else {
        if (root->numKeys == (2 * DEGREE - 1)) {
            struct BTreeNode *newRoot = createNode(0);
            newRoot->children[0] = root;
            splitChild(newRoot, 0, root);
            root = newRoot;
        }

        insertNonFull(root, key);
    }
}

// Helper function to split a full child of a B-tree node
void splitChild(struct BTreeNode *x, int i, struct BTreeNode *y) {
    struct BTreeNode *z = createNode(y->isLeaf);
    z->numKeys = DEGREE - 1;

    for (int j = 0; j < DEGREE - 1; j++)
        z->keys[j] = y->keys[j + DEGREE];

    if (!y->isLeaf) {
        for (int j = 0; j < DEGREE; j++)
            z->children[j] = y->children[j + DEGREE];
    }

    y->numKeys = DEGREE - 1;

    for (int j = x->numKeys; j > i; j--)
        x->children[j + 1] = x->children[j];

    x->children[i + 1] = z;

    for (int j = x->numKeys - 1; j >= i; j--)
        x->keys[j + 1] = x->keys[j];

    x->keys[i] = y->keys[DEGREE - 1];
    x->numKeys++;
}

// Helper function to print the B-tree (in-order)
void printBTree(struct BTreeNode *root, int level) {
    if (root != NULL) {
        for (int i = 0; i < root->numKeys; i++) {
            printBTree(root->children[i], level + 1);
            printf("Level %d, Key: %d\n", level, root->keys[i]);
        }
        printBTree(root->children[root->numKeys], level + 1);
    }
}