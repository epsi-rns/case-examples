import mysongs._

object T05 extends App {
  val tagsList = MySongs.songs map (
    song => song.tags match {
      case Some(tags) => tags
      case None => List()
    }
  )
  tagsList map (tags => println(tags))
}
