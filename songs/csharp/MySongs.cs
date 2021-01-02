using System;

#nullable enable

public record MySong {
  public string Title  { get; init; }  = null!;
  public string[]? Tags { get; init; } = null!;
}; 

class MySongs
{
  public MySong[] songs;

  public MySongs() {
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
}
