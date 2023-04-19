//person class with name and age

class Person
{
  public string? name;
  public int age;

  public Person() { }
}

class Program
{
  static void Main(string[] args)
  {
    Person person = new Person()
    {
      name = "John",
      age = 20
    };

    System.Console.WriteLine(person.name);
    System.Console.WriteLine(person.age);
  }
}
