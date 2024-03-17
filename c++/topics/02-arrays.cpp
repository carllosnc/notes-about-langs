#include <iostream>

int main()
{
  int array[5] = {1, 2, 3, 4, 5};

  for (int i = 0; i < 5; i++)
  {
    std::cout << array[i] << std::endl;
  }

  std::cout << array[0] << std::endl;
  std::cout << array[1] << std::endl;
  std::cout << array[2] << std::endl;
  std::cout << array[3] << std::endl;
  std::cout << array[4] << std::endl;

  return 0;
}