#include<stdio.h>
double add(int x, float y)
{
	return (x+y);
}
int main()
{
	int a;
	float b,sum;
	printf("Enter two numbers:");
	scanf("%d%f",&a,&b);
	printf("The sum is %lf ",add(a,b));
	return 0;
}