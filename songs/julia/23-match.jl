using Match

tags = ["rock", "jazz", "rock", "pop", "pop"]

exclude(value, tags) = begin
  filter(tag -> tag!=value, tags)
end

unique(tags)::Array{String} = begin
  @match tags begin
    []     => []
    [head] => [head]
    _      => begin
      head = popfirst!(tags)
      tail = unique(exclude(head, tags))
      pushfirst!(tail, head)
    end  
  end
end

tags |> unique |> println
