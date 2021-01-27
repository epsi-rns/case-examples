import mysongs._

object T09 extends App {
  def songsFlatten(songs: List[Song])
    = for (
        song <- songs if song.tags != None;
        tag <- song.tags.get
      ) yield tag

  println(songsFlatten(MySongs.songs))
}
