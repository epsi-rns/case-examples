using System;
using System.Linq;

class Step13Unique
{
  private string[] tags;

  public Step13Unique() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }
  
  public string[] Exclude(string val, string[] tags) {
    var excluded = from tag in tags where tag != val select tag;
    return excluded.ToArray();
  }

  public string[] Unique(string[] tags) {
    if (tags.Length <=1) {
      return tags;
    } else {
      string   head = tags.FirstOrDefault();
      string[] tail = tags.Skip(1).ToArray();

      string[] newhead = new string[1] {head};
      string[] newtail = Unique(Exclude(head, tail));

      return newhead.Concat(newtail).ToArray();

    }
  }

  public void Show() {
    Console.WriteLine("[{0}]",
      string.Join(", ", Unique(tags)));
  }
}
