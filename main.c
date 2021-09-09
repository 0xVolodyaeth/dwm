#include <stdio.h>

void retInt(int a)
{
	printf("%d\n", a);
}

int main()
{

	void (*func)(int) = &retInt;
	(*func)(10);
}