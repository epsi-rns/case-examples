import mysongs._

object T12 extends App {
  def songsFlatten(songs: List[Song])
    = for (
        song <- songs if song.tags != None;
        tag <- song.tags.get
      ) yield tag

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

  println(unique(songsFlatten(MySongs.songs)))
}

