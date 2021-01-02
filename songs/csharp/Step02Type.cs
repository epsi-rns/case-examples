using System;

class Step02Type
{
  public record MySong {
    public string Title  { get; init; }
    public string[] Tags { get; init; } 
  }; 

  private MySong song;

  public Step02Type() {
    song = new MySong {
      Title = "Cantaloupe Island",
      Tags  = new string[] {"60s", "jazz"}
    };
  }

  public void Show() {
    Console.WriteLine("[{0}, ({1})]",
      song.Title, string.Join(", ", song.Tags)
    );
  }
}
