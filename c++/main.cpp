// gcc .\main.c -o main; .\main

#include <iostream>
#include <string>

using namespace std;

int add(int x, int y)
{
  return x + y;
}

struct Person
{
  string name;
  int age;
  double height;
  double weight;
};

string personToJson(Person person)
{
  return "{name: " + person.name + ", age: " + to_string(person.age) + ", height: " + to_string(person.height) + ", weight: " + to_string(person.weight) + "}";
}

int main()
{
  Person person;
  person.name = "John";
  person.age = 20;
  person.height = 1.75;
  person.weight = 70.5;

  string json = personToJson(person);

  cout << json << endl;

  return 0;
}
