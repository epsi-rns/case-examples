using System;

class Step15Generics
{
  private string[] tags;

  public Step15Generics() {
    tags = new string[5]
      {"rock", "jazz", "rock", "pop", "pop"};
  }

  public void Show() {
    MyUtils myUtils = new MyUtils();

    Console.WriteLine("[{0}]",
      string.Join(", ", myUtils.Unique(tags)));
  }
}
