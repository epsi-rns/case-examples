local inspect = require('inspect')
require 'fun' ()
require 'my-songs'
require 'my-flatten'

function print_inspect(tags)
  print(inspect(tags))
end

function exclude(val, tags)
  return filter(
    function (tag) return tag ~= val end, tags)
end

local tags = flatten( clean(extract(songs)) )
-- print_inspect( exclude("rocks", tags) )
each(print_inspect, exclude("rocks", tags))
