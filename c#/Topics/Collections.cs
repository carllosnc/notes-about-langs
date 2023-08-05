namespace Topics
{
  class Collections
  {
    // arrays
    private void Arrays()
    {
      int[] a1 = new int[] { 1, 2, 3, 4, 5 };

      //foreach the array
      foreach (int i in a1)
      {
        Console.WriteLine(i);
      }

      //map the array
      int[] a2 = a1.Select(i => i * 2).ToArray();

      //filter the array
      int[] a3 = a1.Where(i => i % 2 == 0).ToArray();

      //reduce the array
      int a4 = a1.Aggregate((i, j) => i + j);

      //sort the array
      int[] a5 = a1.OrderBy(i => i).ToArray();

      //sort descending the array
      int[] a6 = a1.OrderByDescending(i => i).ToArray();
    }

    // lists
    private void Lists()
    {
      List<int> l1 = new List<int>() { 1, 2, 3 };

      //foreach the list
      foreach (int i in l1)
      {
        Console.WriteLine(i);
      }

      //map the list
      List<int> l2 = l1.Select(i => i * 2).ToList();

      //filter the list
      List<int> l3 = l1.Where(i => i % 2 == 0).ToList();

      //reduce the list
      int l4 = l1.Aggregate((i, j) => i + j);

      //sort the list
      List<int> l5 = l1.OrderBy(i => i).ToList();

      //sort descending the list
      List<int> l6 = l1.OrderByDescending(i => i).ToList();
    }

    // dictionaries
    private void Dictionaries()
    {
      Dictionary<int, string> d1 = new Dictionary<int, string>();

      //foreach the dictionary
      foreach (KeyValuePair<int, string> kvp in d1)
      {
        Console.WriteLine(kvp.Key + " " + kvp.Value);
      }

      //map the dictionary
      Dictionary<int, string> d2 = d1.ToDictionary(kvp => kvp.Key, kvp => kvp.Value);

      //filter the dictionary
      Dictionary<int, string> d3 = d1.Where(kvp => kvp.Key % 2 == 0).ToDictionary(kvp => kvp.Key, kvp => kvp.Value);

      //reduce the dictionary
      int d4 = d1.Aggregate(0, (i, kvp) => i + kvp.Key);

      //sort the dictionary
      Dictionary<int, string> d5 = d1.OrderBy(kvp => kvp.Key).ToDictionary(kvp => kvp.Key, kvp => kvp.Value);

      //sort descending the dictionary
      Dictionary<int, string> d6 = d1.OrderByDescending(kvp => kvp.Key).ToDictionary(kvp => kvp.Key, kvp => kvp.Value);
    }

    // sets
    private void Sets()
    {
      HashSet<int> s1 = new HashSet<int>();

      //foreach the set
      foreach (int i in s1)
      {
        Console.WriteLine(i);
      }

      //map the set
      HashSet<int> s2 = s1.Select(i => i * 2).ToHashSet();

      //filter the set
      HashSet<int> s3 = s1.Where(i => i % 2 == 0).ToHashSet();

      //reduce the set
      int s4 = s1.Aggregate((i, j) => i + j);

      //sort the set
      HashSet<int> s5 = s1.OrderBy(i => i).ToHashSet();

      //sort descending the set
      HashSet<int> s6 = s1.OrderByDescending(i => i).ToHashSet();
    }

  }
}
