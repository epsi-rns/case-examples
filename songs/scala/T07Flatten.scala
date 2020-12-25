import mysongs._

object T07 extends App {
  def tagsList(songs: List[Song])
    : List[Option[List[String]]]
    = songs map (song => song.tags)

  val myTagsList = tagsList(MySongs.songs)
  println(myTagsList.flatten)
  println(myTagsList.flatten.flatten)
}
