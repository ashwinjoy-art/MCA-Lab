#include<stdio.h>
int main()
{
	int i,arr[20];
	int limit,value,pos;
	printf("Enter the array limit: ");
	scanf("%d",&limit);
	printf("Enter the array elements: ");
	for(i=0;i<limit;i++)
	{
		scanf("%d",&arr[i]);
	}
	printf("Enter the array element to be inserted: ");
	scanf("%d",&value);
	printf("Enter the postion to be inserted: ");
	scanf("%d",&pos);
	for(i=limit-1;i>=pos;i--)
	{
		arr[i+1]=arr[i];
	}
	arr[pos]=value;
	for(i=0;i<=limit;i++)
	{
		printf("%d\n",arr[i]);
	}
    return 0;
}
