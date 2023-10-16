using Math;

class Person
{
    public string Name { get; set; }
    public int Age { get; set; }

    public Person(string name, int age)
    {
        Name = name;
        Age = age;
    }

    static Person()
    {
        Console.WriteLine("Static constructor");
    }

}

class Program
{
    static void Main(string[] args)
    {
        Person p = new("John", 30);
        //Static constructor
    }
}
