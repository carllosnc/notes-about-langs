namespace Learn;

class Program
{
  static async Task<string> GetMessageAsync(int time, string message)
  {
    await Task.Delay(time);
    return message;
  }

  static void Main(string[] args)
  {
    Console.WriteLine("Hello World!");

    string message = GetMessageAsync(3000, "Delayed message").Result;

    Console.WriteLine(message);
  }
}
