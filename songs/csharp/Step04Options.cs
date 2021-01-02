using System;

#nullable enable

class Step04Options
{
  public record MySong {
    public string Title  { get; init; }  = null!;
    public string[]? Tags { get; init; } = null!;
  }; 

  private MySong[] songs;

  public Step04Options() {
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
        Tags  = null
      },
    };
  }

  public void Show() {
    Array.ForEach(songs,
      song => Console.WriteLine("[{0}, ({1})]",
        song.Title, string.Join(", ",
          (song.Tags?? new string[] {})))
    );
  }
}
