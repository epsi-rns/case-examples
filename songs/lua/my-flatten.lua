function extract(songs)
  return map(
    function (song) return song.tags end, songs)
end

function clean(tags)
  return filter(
    function (tag) return tag end, tags)
end

function flatten_rec(init, tags)
  return foldl(
    function(acc, tag)
      if type(tag) == 'string' then
        acc[#acc + 1] = tag
        return acc
      end
      if type(tag) == 'table' then
        return flatten_rec(acc, tag)
      end
    end,
    init, tags
  )
end

function flatten(tags)
  return flatten_rec({}, tags)
end
