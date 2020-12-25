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

print(inspect(flatten(songs)))
