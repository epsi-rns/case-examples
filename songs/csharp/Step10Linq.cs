using System;
using System.Linq;

class Step10Linq
{
  public void Show() {
     // 1. Data source.
    var songs = new MySongs().songs;

    // 2. Query creation.
    var tagss =
      from song in songs
      where song.Tags != null
        from tag in song.Tags
        select tag;

    // 3. Query execution.
    var tags = tagss.Distinct();
    Console.WriteLine("[{0}]",
      string.Join(", ", tags));
  }
}
