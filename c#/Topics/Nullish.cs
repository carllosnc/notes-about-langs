namespace Topics;

class NullablePerson
{
  public string? Name { get; set; }
  public int? Age { get; set; }
}

class Nullish
{
  public static void Run()
  {
    NullablePerson person = new NullablePerson
    {
      Name = "John"
    };

    System.Console.WriteLine(person.Name ?? "name is null");
    System.Console.WriteLine(person.Age!);
    System.Console.WriteLine(person.Age ?? -1);

    int? x = null;
    int? y = 10;
    int z = x ?? y ?? -1;
    System.Console.WriteLine(z);
  }
}
