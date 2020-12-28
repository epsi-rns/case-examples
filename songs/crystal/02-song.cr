record Song,
  title : String = "", 
  tags : Array(String) = [] of String

song = Song.new "Cantaloupe Island",
                ["60s", "jazz"]

puts song
