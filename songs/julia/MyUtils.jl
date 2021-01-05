module MyUtils

export unique

function unique(tags::Array{T})::Array{T} where {T<:Any}
  if length(tags) <= 1
    return tags
  else
    head = popfirst!(tags)
    excluded = [ tag for tag in tags if tag != head ]
    return pushfirst!(unique(excluded), head)
  end  
end

end
