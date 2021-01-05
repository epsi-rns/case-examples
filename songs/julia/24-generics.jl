tags = ["rock", "jazz", "rock", "pop", "pop"]

function exclude(
  value::T, tags::Array{T}
)::Array{T} where {T<:Any}
  return [ tag for tag in tags if tag != value ]
end

function unique(
  tags::Array{T}
)::Array{T} where {T<:Any}
  if length(tags) <= 1
    return tags
  else
    head = popfirst!(tags)
    tail = unique(exclude(head, tags))
    return pushfirst!(tail, head)
  end  
end

tags |> unique |> println
