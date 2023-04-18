//hello world

namespace Topics
{
  public class Delegates
  {
    public delegate int Operation(int x, int y);

    //a method that accepts a delegate
    public void Calc(int x, int y, Operation op)
    {
      int result = op(10, 20);
      System.Console.WriteLine(result);
    }

    public void Example()
    {
      Operation add = (x, y) => x + y;
      Operation sub = (x, y) => x - y;
      Operation mul = (x, y) => x * y;
      Operation div = (x, y) => x / y;

      //call add
      int result = add(10, 20);
      System.Console.WriteLine(result);

      //call sub
      result = sub(10, 20);
      System.Console.WriteLine(result);

      //call mul
      result = mul(10, 20);
      System.Console.WriteLine(result);

      //call div
      result = div(10, 20);
      System.Console.WriteLine(result);

      //call Calc
      Calc(10, 20, add);
      Calc(10, 20, sub);
      Calc(10, 20, mul);
      Calc(10, 20, div);

      //call combinated delegate
      Operation op = add + sub + mul + div;

      //call op
      result = op(10, 20);
    }
  }
}