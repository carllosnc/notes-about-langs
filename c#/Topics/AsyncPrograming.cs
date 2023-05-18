using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Topics
{
  class Async
  {
    public static async Task<string> DelayedMessage(string message, int delay)
    {
      await Task.Delay(delay);
      return message;
    }

    //a method that run multiple delayed messages in parallel
    public static async Task RunDelayedMessages()
    {
      //list of tasks
      var tasks = new List<Task<string>>();

      //adding tasks to the list
      tasks.Add(DelayedMessage("Hello", 1000));
      tasks.Add(DelayedMessage("World", 2000));
      tasks.Add(DelayedMessage("!", 3000));

      //wait for all tasks to complete
      var messages = await Task.WhenAll(tasks);

      //print the messages
      foreach (var message in messages)
      {
        Console.WriteLine(message);
      }
    }

    //method that race multiple delayed messages
    public static async Task RunDelayedMessagesRace()
    {
      //list of tasks
      var tasks = new List<Task<string>>();

      //adding tasks to the list
      tasks.Add(DelayedMessage("Hello", 1000));
      tasks.Add(DelayedMessage("World", 2000));
      tasks.Add(DelayedMessage("!", 3000));

      //wait for the first task to complete
      var message = await Task.WhenAny(tasks);

      //print the message
      Console.WriteLine(message.Result);
    }
  }
}
