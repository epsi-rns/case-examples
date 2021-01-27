object T11 extends App {
  def exclude(value: String, tags: List[String])
    : List[String]
    = tags filter (tag => {tag!=value})

  def unique(tags: List[String])
    : List[String]
     = tags match {
         case Nil    => List()
         case x::Nil => List(x)
         case x::xs  => x::unique(exclude(x, xs))
       }

  val tags: List[String] =
    List("rock", "jazz", "rock", "pop", "pop")

  println(unique(tags))
}

