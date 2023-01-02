namespace Types;

// a simple way with dotnet

public class LearnArrays
{
  int[] intArray = { 1, 2, 3, 4, 5 };
  string[] stringArray = new string[3] { "first", "second", "third" };

  public void loops()
  {
    foreach (int element in intArray)
    {
      Console.Write(element);
    }

    foreach (var item in stringArray)
    {
      Console.WriteLine(item);
    }
  }

  public void methods()
  {
    Console.Write(intArray.First());
  }
}
