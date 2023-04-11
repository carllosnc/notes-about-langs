//hello world program

namespace Patterns
{

  class PersonSingleton
  {
    private static PersonSingleton? instance = null;
    private string name;
    private int age;

    private PersonSingleton(string name, int age)
    {
      this.name = name;
      this.age = age;
    }

    public static PersonSingleton GetInstance(string name, int age)
    {
      if (instance == null)
      {
        instance = new PersonSingleton(name, age);
      }
      return instance;
    }

    public string Name
    {
      get { return name; }
    }

    public int Age
    {
      get { return age; }
    }

    public override string ToString()
    {
      return $"Name: {name}, Age: {age}";
    }
  }

}

