#include<stdio.h>
void main()
{
	int arr[20],i,pos;
	int limit;
	printf("Enter the limit: ");
	scanf("%d",&limit);
	printf("Enter the array elements: ");
	for(i=0;i<limit;i++)
	{
		scanf("%d",&arr[i]);
	}
	printf("Enter the position to be deleted: ");
	scanf("%d",&pos);
	for(i=pos;i<limit;i++)
	{
		arr[i]=arr[i+1];
	}
	for(i=0;i<limit-1;i++)
	{
		printf("%d\n",arr[i]);
	}

}