#include <stdio.h>
void mergeSortedArrays(int arr1[],int size1,int arr2[],int size2,int merged[])
{
    int i=0,j=0,k=0;
    while (i<size1&&j<size2) 
	{
        if(arr1[i]<arr2[j]) 
		{
            merged[k++]=arr1[i++];
        } else 
		{
            merged[k++]=arr2[j++];
        }
    }
    while(i<size1) 
	{
        merged[k++]=arr1[i++];
    } 
    while(j<size2) 
	{
        merged[k++]=arr2[j++];
    }
}
int main() 
{
    int size1,size2; 
    // Input the sizes of the two sorted arrays
    printf("Enter the size of the first sorted array: ");
    scanf("%d",&size1);
    printf("Enter the size of the second sorted array: ");
    scanf("%d",&size2);    
    int arr1[size1],arr2[size2];   
    // Input the elements of the first sorted array
    printf("Enter the elements of the first sorted array:\n");
    for (int i=0;i<size1;i++) 
	{
        scanf("%d",&arr1[i]);
    }
    // Input the elements of the second sorted array
    printf("Enter the elements of the second sorted array:\n");
    for (int i=0;i<size2;i++) 
	{
        scanf("%d",&arr2[i]);
    }
    int merged[size1+size2];
    // Call the merge function
    mergeSortedArrays(arr1,size1,arr2,size2,merged);
    // Print the merged array
    printf("Merged array:\n");
    for (int i=0;i<size1+size2;i++) 
	{
        printf("%d ",merged[i]);
    }
    return 0;
}
