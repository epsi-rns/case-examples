import mysongs._

object T06 extends App {
  def tagsList(songs: List[Song])
    : List[List[String]] = songs map (
      song => song.tags match {
        case Some(tags) => tags
        case None => List()
      }
  )

  tagsList(MySongs.songs) map (
    tags => println(tags)
  )
}
