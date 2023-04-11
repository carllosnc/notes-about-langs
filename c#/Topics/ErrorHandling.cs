namespace HelloWorld
{
  class ErrorHandling
  {
    static void Example(string[] args)
    {
      try
      {
        int[] numbers = new int[5];
        numbers[0] = 1;
        numbers[1] = 2;
        numbers[2] = 3;
        numbers[3] = 4;
        numbers[4] = 5;
        numbers[5] = 6;
      }
      catch (System.IndexOutOfRangeException ex)
      {
        System.Console.WriteLine("Error: " + ex.Message);
      }
      finally
      {
        System.Console.WriteLine("Finally block executed");
      }
    }
  }
}