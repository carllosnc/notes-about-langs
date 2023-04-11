namespace Topics
{
  //create an enum of days
  enum Days
  {
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday
  }

  enum Countries
  {
    India = 91,
    USA = 1,
    UK = 44,
    Canada = 1
  }

  enum Months
  {
    January = 1,
    February = 2,
    March = 3,
    April = 4,
    May = 5,
    June = 6,
    July = 7,
    August = 8,
    September = 9,
    October = 10,
    November = 11,
    December = 12
  }

  class Enums
  {
    //a method that takes a day as a parameter
    static void printDay(Days day)
    {
      switch (day)
      {
        case Days.Sunday:
          System.Console.WriteLine("Sunday");
          break;
        case Days.Monday:
          System.Console.WriteLine("Monday");
          break;
        case Days.Tuesday:
          System.Console.WriteLine("Tuesday");
          break;
        case Days.Wednesday:
          System.Console.WriteLine("Wednesday");
          break;
        case Days.Thursday:
          System.Console.WriteLine("Thursday");
          break;
        case Days.Friday:
          System.Console.WriteLine("Friday");
          break;
        case Days.Saturday:
          System.Console.WriteLine("Saturday");
          break;
      }
    }
  }
}