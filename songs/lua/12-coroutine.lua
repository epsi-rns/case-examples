local inspect = require('inspect')
require 'my-songs'

function sender ()
  return coroutine.create(function ()
    for _, song in pairs(songs)
    do
      local song_tags = song.tags

      if type(song_tags) == 'table' then
        for _, tag in pairs(song_tags)
          -- send messages
          do coroutine.yield(tag) end
      end
    end
  end)
end

function receiver (prod)
  local tags = {}

  while true do
    -- receive message
    local status, message =
      coroutine.resume(prod)

    if message==nil
      then break
      else tags[#tags + 1] = message
    end
  end

  return tags
end

prod = sender()
tags = receiver(prod)
print(inspect(tags))
