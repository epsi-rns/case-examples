local inspect = require('inspect')
local fun     = require('fun')

-- http://lua-users.org/wiki/FunctionalLibrary

songs = {
  { title = "Cantaloupe Island",
    tags  = {"60s", "jazz"} },
  { title = "Let It Be",
    tags  = {"60s", "rock"} },
  { title = "Knockin' on Heaven's Door",
    tags  = {"70s", "rock"} },
  { title = "Emotion",
    tags  = {"70s", "pop"} },
  { title = "The River" }
}

-- for _, song in pairs(songs) do
--   print(inspect(song))
-- end

-- compose
function print_inspect(x)
  print(inspect(x))
end

fun.each(print_inspect, songs)
