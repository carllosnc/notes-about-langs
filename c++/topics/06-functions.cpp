#include <iostream>

int add(int a, int b)
{
  return a + b;
}

int addMulti(int const *numbers, int size)
{
  int result = 0;
  for (int i = 0; i < size; i++)
  {
    result += numbers[i];
  }

  return result;
}

int main(int argc, char const *argv[])
{
  int numbers[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

  int size = sizeof(numbers) / sizeof(int);

  int result = addMulti(numbers, size);

  std::cout << size << std::endl;

  std::cout << result << std::endl;
}
