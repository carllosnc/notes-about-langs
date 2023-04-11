namespace Topics
{
  class Using
  {
    static void Example(string[] args)
    {
      //create new file using filestream
      using (FileStream fs = new FileStream("test.txt", FileMode.Create))
      {
        //create new streamwriter
        using (StreamWriter sw = new StreamWriter(fs))
        {
          //write to file
          sw.WriteLine("Hello World!");
        }
      }
    }
  }
}