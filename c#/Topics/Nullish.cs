namespace Nullish
{
  //class with optional parameter
  class Optional
  {
    static void Example(string[] args)
    {
      //call method with optional parameter
      Example("Hello World!");
    }
    //method with optional parameter
    static void Example(string s, string? t = null)
    {
      //print string
      System.Console.WriteLine(s);
      //print optional string
      System.Console.WriteLine(t ?? "null");
    }
  }

  class Nullish
  {
    static void Example(string[] args)
    {
      //create new string
      string? s = null;
      //print string
      System.Console.WriteLine(s ?? "null");
    }
  }
}