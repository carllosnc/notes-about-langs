namespace Topics
{
  class Loops
  {
    //method loopExample
    static void loopExample(string[] args)
    {
      //for loop
      for (int i = 0; i < 10; i++)
      {
        Console.WriteLine(i);
      }

      //foreach loop
      string[] names = { "John", "Paul", "George", "Ringo" };

      foreach (string name in names)
      {
        Console.WriteLine(name);
      }

      //while loop
      int j = 0;
      while (j < 10)
      {
        Console.WriteLine(j);
        j++;
      }

      //do-while loop
      int k = 0;
      do
      {
        Console.WriteLine(k);
        k++;
      } while (k < 10);

      //break
      for (int i = 0; i < 10; i++)
      {
        if (i == 5)
        {
          break;
        }
        Console.WriteLine(i);
      }

      //continue
      for (int i = 0; i < 10; i++)
      {
        if (i == 5)
        {
          continue;
        }
        Console.WriteLine(i);
      }

      //goto
      for (int i = 0; i < 10; i++)
      {
        if (i == 5)
        {
          goto end;
        }
        Console.WriteLine(i);
      }

    end:
      Console.WriteLine("end");
    }
  }
}