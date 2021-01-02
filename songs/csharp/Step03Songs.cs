using System;

class Step03Songs
{
  public record MySong {
    public string Title  { get; init; }
    public string[] Tags { get; init; } 
  }; 

  private MySong[] songs;

  public Step03Songs() {
    songs = new [] {
      new MySong { 
        Title = "Cantaloupe Island",
        Tags  = new string[] {"60s", "jazz"}
      },
      new MySong { 
        Title = "Let It Be",
        Tags  = new string[] {"60s", "rock"}
      },
      new MySong { 
        Title = "Knockin' on Heaven's Door",
        Tags  = new string[] {"70s", "rock"}
      },
      new MySong { 
        Title = "Emotion",
        Tags  = new string[] {"70s", "pop"}
      },
      new MySong { 
        Title = "The River",
        Tags  = new string[] {}
      },
    };
  }

  public void Show() {
    Array.ForEach(songs,
      song => Console.WriteLine("[{0}, ({1})]",
        song.Title, string.Join(", ", song.Tags))
    );
  }
}
