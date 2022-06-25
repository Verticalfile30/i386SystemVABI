#include <stdio.h>

//The last arg is a return value pointer
//as courtesy, external assembly functions will exhibit no C-Style return convention
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
