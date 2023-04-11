namespace Topics
{
  class Strings
  {
    static void stringExample(string[] args)
    {
      string s1 = "Hello";
      string s2 = "World";
      string s3 = s1 + " " + s2;
      Console.WriteLine(s3);
      Console.WriteLine(s3.Length);
      Console.WriteLine(s3.ToUpper());
      Console.WriteLine(s3.ToLower());
      Console.WriteLine(s3.Contains("Hello"));
      Console.WriteLine(s3.Contains("hello"));
      Console.WriteLine(s3.StartsWith("Hello"));
      Console.WriteLine(s3.StartsWith("hello"));
      Console.WriteLine(s3.EndsWith("World"));
      Console.WriteLine(s3.EndsWith("world"));
      Console.WriteLine(s3.IndexOf("World"));
      Console.WriteLine(s3.IndexOf("world"));
      Console.WriteLine(s3.LastIndexOf("World"));
      Console.WriteLine(s3.LastIndexOf("world"));
      Console.WriteLine(s3.Substring(6));
      Console.WriteLine(s3.Substring(6, 5));
      Console.WriteLine(s3.Replace("World", "C#"));
      Console.WriteLine(s3.Replace("world", "C#"));
      Console.WriteLine(s3.Insert(6, "C#"));
      Console.WriteLine(s3.Remove(6));
      Console.WriteLine(s3.Remove(6, 5));
      Console.WriteLine(s3.Trim());
      Console.WriteLine(s3.TrimStart());
      Console.WriteLine(s3.TrimEnd());
      Console.WriteLine(s3.PadLeft(20));
      Console.WriteLine(s3.PadRight(20));
      Console.WriteLine(s3.PadLeft(20, '*'));
      Console.WriteLine(s3.PadRight(20, '*'));
      Console.WriteLine(s3.PadLeft(20, ' '));
      Console.WriteLine(s3.PadRight(20, ' '));
      Console.WriteLine(s3.PadLeft(20, '0'));
      Console.WriteLine(s3.PadRight(20, '0'));
      Console.WriteLine(s3.PadLeft(20, '1'));
      Console.WriteLine(s3.PadRight(20, '1'));

      //interpolated string
      string s4 = $"{s1} {s2}";
      Console.WriteLine(s4);
    }
  }
}
