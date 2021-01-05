tags = ["rock", "jazz", "rock", "pop", "pop"]

exclude = function(value, tags)
  return [ tag for tag in tags if tag != value ]
end

unique = function(tags)
  if length(tags) <= 1
    return tags
  else
    head = popfirst!(tags)
    tail = unique(exclude(head, tags))
    return pushfirst!(tail, head)
  end  
end

tags |> unique |> println
