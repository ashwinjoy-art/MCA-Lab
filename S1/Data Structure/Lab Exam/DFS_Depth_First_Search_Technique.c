#include<stdio.h>
#include<stdlib.h>
struct node{
int key;
struct node *left;
struct node *right;
};
struct node* stack[100];
int top = -1;
void push(struct node * elm ){
if( top == 99 )
return;
else{
top++;
stack[top] = elm;
}
}
struct node* pop(void){
struct node* popped;
if(top < 0 )
return NULL;
else {
popped = stack[top];
top--;
return popped;
}
}
struct node* insert(struct node *startNode , int key){
struct node *temp;
if(startNode == NULL){
startNode = (struct node*)malloc(sizeof(struct node));
startNode->key = key;
startNode->left = NULL;
startNode->right = NULL;
}
else if (key < startNode->key)
startNode->left = insert(startNode->left,key);
else if (key > startNode->key)
startNode->right = insert(startNode->right,key);
return startNode;
}
void depthFirstTraversal(struct node *root){
struct node *current = NULL;
struct node *visited[100];
if(root == NULL )
return ;
push(root);
// printf("%d %d\n",root->key,top);
while( top >= 0 ){
current = pop();
printf("%d\n",current->key);
if(current->right != NULL)
push(current->right);
if(current->left != NULL )
push(current->left);
}
}
void inOrder(struct node *root){
if(root == NULL)
return;
inOrder(root->left);
printf("%d\t",root->key);
inOrder(root->right);
}
void main(){
struct node* root = NULL;
root = insert(root,5);
root = insert(root,10);
root = insert(root,6);
root = insert(root,2);
root = insert(root,1);
root = insert(root,3);
depthFirstTraversal(root);
}