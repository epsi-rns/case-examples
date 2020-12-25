local inspect = require('inspect')
require 'fun' ()
require 'my-songs'
require 'my-flatten'
require 'my-tools'

function exclude(val, tags)
  return normalize(filter(
    function (tag) return tag ~= val end, tags))
end

function unique(tags)
  if type(tags) == 'table' then
    if #tags == 0 then return {} end
    if #tags == 1 then return { head(tags) } end

    return join_tables(
      { head(tags) },
      unique( exclude(head(tags), tail(tags)) )
    )
  end
end

local tags = flatten( clean(extract(songs)) )
print_inspect( unique(tags) )


