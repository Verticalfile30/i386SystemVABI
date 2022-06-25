#include <stdio.h>

extern int AssemblyFunc(int num1, int num2, int *returnVal);

int main() {
	int x = 1;
	int y = 23;
	int result = 0;
	int *resultPtr = &result;
	
	AssemblyFunc(x, y, resultPtr);
	printf("%d\n", result);
	return 0;
}