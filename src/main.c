#include <stdio.h>
#include "calculator.h"
int main(int argc, char* argv[])
{
	(void) argc;
	(void) argv;
	printf("Hi from calculator!\n");

	printf("Calculation 1 --> 2 + 5 = %.1f\n", add(2.0, 5.0));
	printf("Calculation 2 --> 2 - 5 = %.1f\n", sub(2.0, 5.0));
	printf("Calculation 3 --> 2 * 5 = %.1f\n", mult(2.0, 5.0));
	printf("Calculation 4 --> 2 / 5 = %.1f\n", division(2.0, 5.0));

	return 0;
}

