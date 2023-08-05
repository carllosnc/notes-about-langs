namespace Topics
{
  class Conditions
  {
    public enum Operations
    {
      Add,
      Subtract,
      Multiply,
      Divide
    }

    static int Calc(Operations op, int x, int y) => op switch
    {
      Operations.Add => x + y,
      Operations.Subtract => x - y,
      Operations.Multiply => x * y,
      Operations.Divide => x / y,
      _ => throw new ArgumentException("invalid operation")
    };

    static void run(string[] args)
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

      //short circuit
      bool b = true;
      bool c = false;
      bool d = b || c;
      bool e = b && c;

      //switch/case
      switch (x)
      {
        case 0:
          System.Console.WriteLine("x is zero");
          break;
        case 1:
          System.Console.WriteLine("x is one");
          break;
        default:
          System.Console.WriteLine("x is not zero or one");
          break;
      }

      System.Console.WriteLine(Calc(Operations.Add, 1, 2));
      System.Console.WriteLine(Calc(Operations.Subtract, 1, 2));
      System.Console.WriteLine(Calc(Operations.Multiply, 1, 2));
      System.Console.WriteLine(Calc(Operations.Divide, 1, 2));
    }
  }
}