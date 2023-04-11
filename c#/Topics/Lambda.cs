namespace Topics
{
  class Lambda
  {
    public static void Example()
    {
      Func<int, int, int> add = (x, y) => x + y;
      Func<int, int, int> subtract = (x, y) => x - y;
      Func<int, int, int> multiply = (x, y) => x * y;
      Func<int, int, int> divide = (x, y) => x / y;

      Action<int, int, Func<int, int, int>> calc = (x, y, op) =>
      {
        int result = op(x, y);
        System.Console.WriteLine(result);
      };

      calc(10, 5, add);
    }
  }
}
