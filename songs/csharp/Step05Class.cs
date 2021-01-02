using System;

class Step05Class
{
  public void Show() {
    MySongs mySongs = new MySongs();
    MySong[] songs = mySongs.songs;

    Array.ForEach(songs,
      song => Console.WriteLine("[{0}, ({1})]",
        song.Title, string.Join(", ",
          (song.Tags?? new string[] {})))
    );
  }
}
