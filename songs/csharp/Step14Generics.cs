using System;

class Step14Generics
{
  private string[] tags;

  public Step14Generics() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }

  public void Show() {
    MyUtils myUtils = new MyUtils();

    Console.WriteLine("[{0}]",
      string.Join(", ", myUtils.Unique(tags)));
  }
}
