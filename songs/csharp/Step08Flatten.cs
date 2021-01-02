using System;
using System.Linq;

class Step08Flatten
{
  public void Show() {
    MySongs mySongs = new MySongs();
  
    var tags = (mySongs.songs)
      .Select(song => song.Tags)
      .Where(tags => tags != null)
      .SelectMany(tag => tag);

    Console.WriteLine("[{0}]",
      string.Join(", ", tags));
  }
}
