namespace Topics
{
  class Types
  {
    static void typesExample(string[] args)
    {
      //integer
      int i = 10;
      Console.WriteLine("i = {0}", i);

      //floating point
      float f = 10.5f;
      Console.WriteLine("f = {0}", f);

      //double
      double d = 10.5;
      Console.WriteLine("d = {0}", d);

      //character
      char c = 'A';
      Console.WriteLine("c = {0}", c);

      //string
      string s = "Hello";
      Console.WriteLine("s = {0}", s);

      //boolean
      bool b = true;
      Console.WriteLine("b = {0}", b);

      //object
      object o = 10;
      Console.WriteLine("o = {0}", o);

      //dynamic
      dynamic dy = 10;
      Console.WriteLine("dy = {0}", dy);

      //var
      var v = 10;
      Console.WriteLine("v = {0}", v);
    }
  }
}