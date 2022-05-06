#include <stdio.h>

int main()
{

#define BOOL CHAR
#define FALSE 0
#define TRUE 1

  int foo;
  int num1 = 1;
  int num2 = 2;

  printf("The sum is - %d", num1 + num2);

  return 0;
}
