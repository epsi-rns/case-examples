local inspect = require('inspect')
require 'my-songs'

function flatten(songs)
  local tags = {}

  for _, song in pairs(songs)
  do
    local song_tags = song.tags

    if type(song_tags) == 'table' then
      for _, tag in pairs(song_tags)
      do
        tags[#tags + 1] = tag
      end
    end

  end
  
  return tags
end

-- https://stackoverflow.com/questions/20066835/lua-remove-duplicate-elements

function unique(tags)
  local hash, res = {}, {}

  for _,tag in pairs(tags) do
    if (not hash[tag]) then
      res[#res+1] = tag
      hash[tag] = true
    end
  end
  
  return res
end

print(inspect(unique(flatten(songs))))
