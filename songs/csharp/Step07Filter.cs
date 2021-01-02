using System;
using System.Linq;

class Step07Filter
{
  public void Show() {
    MySongs mySongs = new MySongs();
  
    var tagss = (mySongs.songs)
      .Select(song => song.Tags)
      .Where(tags => tags != null);

    foreach(var tags in tagss) {
      Console.WriteLine("[{0}]",
        string.Join(", ", tags));
    }
  }
}
