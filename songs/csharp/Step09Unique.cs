using System;
using System.Linq;

class Step09Unique
{
  public void Show() {
    MySongs mySongs = new MySongs();
  
    var tags = (mySongs.songs)
      .Select(song => song.Tags)
      .Where(tags => tags != null)
      .SelectMany(tag => tag)
      .Distinct();

    Console.WriteLine("[{0}]",
      string.Join(", ", tags));
  }
}
