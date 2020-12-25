local inspect = require('inspect')
require 'fun' ()
require 'my-songs'

-- for _, song in ipairs(songs)
-- do
--   print(inspect(song.tags))
-- end

function print_inspect(x)
  print(inspect(x))
end

local tags = map(
  function (song) return song.tags end,
  songs
)

each(print_inspect, tags)



