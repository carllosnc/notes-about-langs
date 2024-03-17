#include <iostream>

// custom exception
class MyException : public std::exception
{
public:
  virtual const char *what() const throw()
  {
    return "Something bad happened!";
  }
};

int main()
{

  try
  {
    throw MyException();
  }
  catch (MyException &e)
  {
    std::cout << e.what() << std::endl;
  }

  return 0;
}
