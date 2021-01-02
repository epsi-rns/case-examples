using System;
using System.Linq;

class Step06Map
{
  public void Show() {
    MySongs mySongs = new MySongs();
    MySong[] songs = mySongs.songs;
    
    var tagss = songs.Select(song => song.Tags);

    foreach(var tags in tagss) {
      Console.WriteLine("[{0}]",
        string.Join(", ", (tags?? new string[] {})));
    }
  }
}
