using System.Text.Json;

namespace Tips
{

  public class Product
  {
    public int id { get; set; }
    public string? title { get; set; }
    public string? description { get; set; }
    public int price { get; set; }
    public double discountPercentage { get; set; }
    public double rating { get; set; }
    public int stock { get; set; }
    public string? brand { get; set; }
    public string? category { get; set; }
    public string? thumbnail { get; set; }
    public List<string>? images { get; set; }

    public Product(
      int id,
      string title,
      string description,
      int price,
      double discountPercentage,
      double rating,
      int stock,
      string brand,
      string category,
      string thumbnail,
      List<string> images
    )
    {
      this.id = id;
      this.title = title;
      this.description = description;
      this.price = price;
      this.discountPercentage = discountPercentage;
      this.rating = rating;
      this.stock = stock;
      this.brand = brand;
      this.category = category;
      this.thumbnail = thumbnail;
      this.images = images;
    }
  }


  class Request
  {
    public static async void run()
    {
      HttpClient client = new HttpClient();

      var response = await client.GetAsync("https://dummyjson.com/products/1");

      if (response.IsSuccessStatusCode)
      {
        var content = response.Content.ReadAsStringAsync().Result;

        var product = JsonSerializer.Deserialize<Product>(content)!;

        Console.WriteLine(product.description);
      }
    }
  }
}