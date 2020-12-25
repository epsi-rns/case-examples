package mysongs

case class Song(
  title: String,
  tags: Option[List[String]]
)

object MySongs {
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
}
