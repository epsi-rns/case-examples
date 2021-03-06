record Song,
  title : String = "", 
  tags : Array(String) = [] of String

songs: Array(Song) = [
  (Song.new "Cantaloupe Island",
           ["60s", "jazz"]),
  (Song.new "Let It Be",
           ["60s", "rock"]),
  (Song.new "Knockin' on Heaven's Door",
           ["70s", "rock"]),
  (Song.new "Emotion",
           ["70s", "pop"]),
  (Song.new "The River"),
]

songs.each do |song| puts song end
