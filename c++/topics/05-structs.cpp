#include <iostream>
#include <string.h>

struct person
{
  char name[50];
  int age;
  float salary;
};

struct car
{
  char brand[50];
  char model[50];
  int year;
  float price;
};

void printPerson(person p)
{
  std::cout << "Name: " << p.name << '\n';
  std::cout << "Age: " << p.age << '\n';
  std::cout << "Salary: " << p.salary << '\n';
}

int main(int argc, char const *argv[])
{
  person p1;

  p1.age = 25;
  p1.salary = 10000.50;
  strcpy(p1.name, "John");

  std::cout << "Name: " << p1.name << '\n';

  return 0;
}
