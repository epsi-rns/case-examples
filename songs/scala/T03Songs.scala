case class Song(
  title: String,
  tags: Option[List[String]]
)

object T03 extends App {
  val songs: List[Song] = List(
    Song( "Cantaloupe Island",
          Some(List("60s", "jazz")) ),
    Song( "Let It Be",
          Some(List("60s", "rock")) ),
    Song( "Knockin' on Heaven's Door",
          Some(List("70s", "rock")) ),
    Song( "Emotion",
          Some(List("70s", "pop")) ),
    Song( "The River", None )
  )

  songs map (song => println(song))
}
