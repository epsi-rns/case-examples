using System;

class Step01Tags
{
  private string[] tags;

  public Step01Tags() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }

  public void Show() {
    Console.WriteLine("[{0}]",
      string.Join(", ", tags));
  }
}

