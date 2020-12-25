local inspect = require('inspect')
require 'fun' ()
require 'my-songs'

function print_inspect(x)
  print(inspect(x))
end

function extract(songs)
  return map(
    function (song) return song.tags end, songs)
end

function clean(tags)
  return filter(
    function (tag) return tag end, tags)
end

each(print_inspect, clean(extract(songs)))



