#include <iostream>

int main()
{
  std::string name = "John";
  std::string lastName = "Doe";

  std::cout << name + " " + lastName << std::endl;

  std::cout << name.length() << std::endl;

  std::cout << name[0] << std::endl;

  std::cout << name.find("o") << std::endl;

  std::cout << name.substr(0, 2) << std::endl;

  std::cout << name.erase(0, 2) << std::endl;

  std::cout << name.insert(0, "Jo") << std::endl;

  std::cout << name.replace(0, 2, "Jo") << std::endl;

  std::cout << name.compare("Jo") << std::endl;

  std::cout << name.compare("John") << std::endl;

  std::cout << name.compare("Jo") << std::endl;

  return 0;
}
