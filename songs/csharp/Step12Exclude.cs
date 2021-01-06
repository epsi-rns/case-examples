using System;
using System.Linq;

class Step12Exclude
{
  private string[] tags;

  public Step12Exclude() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }
  
  public string[] Exclude(string val, string[] tags) {
    var excluded = from tag in tags where tag != val select tag;
    return excluded.ToArray();
  }

  public void Show() {
    Console.WriteLine("[{0}]",
      string.Join(", ", Exclude("rock", tags)));
  }
}

