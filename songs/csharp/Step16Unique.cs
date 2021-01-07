using System;
using System.Linq;

class Step16Unique
{
  public void Show() {
    MySongs mySongs = new MySongs();
    MyUtils myUtils = new MyUtils();
  
    var tags = (mySongs.songs)
      .Select(song => song.Tags)
      .Where(tags => tags != null)
      .SelectMany(tag => tag);

    Console.WriteLine("[{0}]", string.Join(", ",
      myUtils.Unique(tags.ToArray())));
  }
}
