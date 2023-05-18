namespace Topics
{
  class Calc
  {
    private int result = 0;

    public Calc Add(int x)
    {
      result += x;
      return this;
    }

    public Calc Subtract(int x)
    {
      result -= x;
      return this;
    }

    public Calc Multiply(int x)
    {
      result *= x;
      return this;
    }

    public Calc Divide(int x)
    {
      result /= x;
      return this;
    }

    public int Result()
    {
      return result;
    }
  }

  //class params to exemplify the use of params
  class Params
  {
    //required
    public int Add(int x, int y)
    {
      return x + y;
    }

    //infinite
    public int Add(params int[] numbers)
    {
      int result = 0;
      foreach (int number in numbers)
      {
        result += number;
      }
      return result;
    }

    //optional
    public int Add(int x, int y, int z = 0)
    {
      return x + y + z;
    }

    //callback
    public void Process(int x, int y, Action<int, int> callback)
    {
      callback(x, y);
    }
  }
}