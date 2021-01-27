object T10 extends App {
  def exclude(value: String, tags: List[String])
    : List[String]
    = tags filter (tag => {tag!=value})

  val tags: List[String] =
    List("rock", "jazz", "rock", "pop", "pop")

  println(exclude("rock", tags))
}
