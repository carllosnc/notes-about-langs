namespace In_Out_Ref
{
  class Program
  {
    static void Run(string[] args)
    {
      int a = 10;
      int b = 20;

      //in
      Console.WriteLine("Before in: a = {0}, b = {1}", a, b);
      InMethod(in a, in b);
      Console.WriteLine("After in: a = {0}, b = {1}", a, b);

      Console.WriteLine("\n");

      //out
      Console.WriteLine("Before out: a = {0}, b = {1}", a, b);
      OutMethod(out a, out b);
      Console.WriteLine("After out: a = {0}, b = {1}", a, b);

      Console.WriteLine("\n");

      //ref
      Console.WriteLine("Before ref: a = {0}, b = {1}", a, b);
      RefMethod(ref a, ref b);
      Console.WriteLine("After ref: a = {0}, b = {1}", a, b);
    }

    static void InMethod(in int a, in int b)
    {
      //a = 100; //error
      //b = 200; //error
    }

    static void OutMethod(out int a, out int b)
    {
      a = 100;
      b = 200;
    }

    static void RefMethod(ref int a, ref int b)
    {
      a = 100;
      b = 200;
    }
  }
}