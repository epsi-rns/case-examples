case class Song(
  title: String,
  tags: List[String]
)

object T02 extends App {
  def song(): Song = Song(
    "Cantaloupe Island",
    List("60s", "jazz")
  )

  println(song())
}
