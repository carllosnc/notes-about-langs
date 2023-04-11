namespace Topics
{
  class Program
  {
    static void Conditions(string[] args)
    {
      int x = 10;

      //if
      if (x > 0 && x < 20)
      {
        System.Console.WriteLine("x is between 0 and 20");
      }

      //if else
      if (x > 0)
      {
        System.Console.WriteLine("x is positive");
      }
      else
      {
        System.Console.WriteLine("x is negative");
      }

      //ternary
      string message = (x > 0) ? "x is positive" : "x is negative";
    }
  }
}