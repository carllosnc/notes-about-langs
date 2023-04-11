namespace Topics
{
  public class Point
  {
    public int X;
    public int Y;

    public Point()
    {
      X = 0;
      Y = 0;
    }

    public Point(int x, int y)
    {
      X = x;
      Y = y;
    }

    public Point(int x)
    {
      X = x;
      Y = 0;
    }

    public Point(Point p)
    {
      X = p.X;
      Y = p.Y;
    }

    public Point(string x, string y)
    {
      X = int.Parse(x);
      Y = int.Parse(y);
    }

    public void Display()
    {
      System.Console.WriteLine("X = {0}, Y = {1}", X, Y);
    }
  }
}