object T09f extends App {
  def loop(tags: List[String])
    = for (tag <- tags) yield tag

  val tags: List[String] =
    List("rock", "jazz", "rock", "pop", "pop")

  println(loop(tags))
}
