namespace Topics
{
  class AsyncExample
  {
    private static async Task<string> DelayedMessage(string message, int delay)
    {
      await Task.Delay(delay);
      return message;
    }

    private static async Task RunDelayedMessages()
    {
      var tasks = new List<Task<string>>();

      tasks.Add(DelayedMessage("Hello", 1000));
      tasks.Add(DelayedMessage("World", 2000));
      tasks.Add(DelayedMessage("!", 3000));

      var messages = await Task.WhenAll(tasks);

      foreach (var message in messages)
      {
        Console.WriteLine(message);
      }
    }

    private static async Task RunDelayedMessagesRace()
    {
      var tasks = new List<Task<string>>();

      tasks.Add(DelayedMessage("Hello", 1000));
      tasks.Add(DelayedMessage("World", 2000));
      tasks.Add(DelayedMessage("!", 3000));

      var message = await Task.WhenAny(tasks);

      Console.WriteLine(message.Result);
    }

    public static async Task Run()
    {
      await AsyncExample.RunDelayedMessages();
      await AsyncExample.RunDelayedMessagesRace();
    }
  }
}
