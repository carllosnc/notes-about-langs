#include <stdio.h>

void arrMap(int *array, int size, int (*f)(int))
{
  for (int i = 0; i < size; i++)
  {
    array[i] = f(array[i]);
  }
}

void arrFilter(int *array, int size, int (*f)(int))
{
  for (int i = 0; i < size; i++)
  {
    if (!f(array[i]))
    {
      array[i] = 0;
    }
  }
}

int arrReduce(int *array, int size, int (*f)(int, int))
{
  int result = array[0];

  for (int i = 1; i < size; i++)
  {
    result = f(result, array[i]);
  }

  return result;
}

int arrMax(int *array, int size)
{
  int max = array[0];

  for (int i = 1; i < size; i++)
  {
    if (array[i] > max)
    {
      max = array[i];
    }
  }

  return max;
}

void printArray(int *array, int size)
{
  for (int i = 0; i < size; i++)
  {
    printf("%d\n", array[i]);
  }
}

void printFilteredArray(int *array, int size)
{
  for (int i = 0; i < size; i++)
  {
    if (array[i] != 0)
    {
      printf("%d\n", array[i]);
    }
  }
}
