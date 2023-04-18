namespace Patterns
{
  public interface IDatabase
  {
    string GetConnectionString();
  }

  class Postgres : IDatabase
  {
    public string GetConnectionString()
    {
      return "Postgres Connection String";
    }
  }

  class MySQL : IDatabase
  {
    public string GetConnectionString()
    {
      return "MySQL Connection String";
    }
  }

  public class Database
  {
    private IDatabase _database;

    public Database(IDatabase database)
    {
      _database = database;
    }

    public string GetConnectionString()
    {
      return _database.GetConnectionString();
    }
  }

  class Example
  {
    static void MainPoint(string[] args)
    {
      var mySqlAdapter = new MySQL();
      var postgresAdapter = new Postgres();

      var mySql = new Database(mySqlAdapter);
      var postgres = new Database(postgresAdapter);

      System.Console.WriteLine(mySql.GetConnectionString());
      System.Console.WriteLine(postgres.GetConnectionString());
    }
  }

}