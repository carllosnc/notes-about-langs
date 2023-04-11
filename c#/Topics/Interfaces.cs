namespace Topics
{
  interface IHuman
  {
    void Eat();
    void Sleep();
    void Work();
  }

  interface IStudent : IHuman
  {
    void Study();
  }

  class Person : IHuman
  {
    public string Name { get; set; }
    public int Age { get; set; }

    public Person(string name, int age)
    {
      Name = name;
      Age = age;
    }

    public void Eat()
    {
      Console.WriteLine("Person is eating");
    }

    public void Sleep()
    {
      Console.WriteLine("Person is sleeping");
    }

    public void Work()
    {
      Console.WriteLine("Person is working");
    }
  }
}
