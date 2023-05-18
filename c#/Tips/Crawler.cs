using HtmlAgilityPack;

namespace Tips;

public class Crawler
{
  public static async Task run()
  {
    HttpClient client = new HttpClient();

    HttpResponseMessage response = await client.GetAsync("https://www.lipsum.com/");
    response.EnsureSuccessStatusCode();

    String responseBody = await response.Content.ReadAsStringAsync();

    HtmlDocument doc = new HtmlDocument();
    doc.LoadHtml(responseBody);
    HtmlNode h1node = doc.DocumentNode.SelectSingleNode("//h1");

    HtmlNode h2node = doc.DocumentNode.SelectSingleNode("//h2");

    HtmlNode h3node = doc.DocumentNode.SelectSingleNode("//h3");

    Console.WriteLine(h1node.InnerText);
    Console.WriteLine(h2node.InnerText);
    Console.WriteLine(h3node.InnerText);
  }
}
