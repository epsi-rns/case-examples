import mysongs._

object T08 extends App {
  def tagsList(songs: List[Song])
    : List[Option[List[String]]]
    = songs map (song => song.tags)

  println(
    tagsList(MySongs.songs)
      .flatten.flatten.distinct
  )
}
