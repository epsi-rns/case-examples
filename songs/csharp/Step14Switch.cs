using System;
using System.Linq;

class Step14Switch
{
  private string[] tags;

  public Step14Switch() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }
  
  public string[] Exclude(string val, string[] tags) {
    var excluded = from tag in tags where tag != val select tag;
    return excluded.ToArray();
  }

  public string[] Unique2(string[] tags) {
    string   head = tags.FirstOrDefault();
    string[] tail = tags.Skip(1).ToArray();

    string[] newhead = new string[1] {head};
    string[] newtail = Unique(Exclude(head, tail));

    return newhead.Concat(newtail).ToArray();
  }

  public string[] Unique(string[] tags) {
    return tags switch {
      { Length: 0 } => tags,
      { Length: 1 } => tags,
      _ => Unique2(tags)
    };
  }

  public void Show() {
    Console.WriteLine("[{0}]",
      string.Join(", ", Unique(tags)));
  }
}
