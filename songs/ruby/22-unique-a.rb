tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def exclude(val, tags)
  tags.map{ |tag| tag unless tag == val }
    .compact
end

def unique(tags)
  if tags.length() <= 1 then
    tags
  else
    head, *tail = tags
    return [head] + unique(exclude(head, tail))
  end
end

puts "#{unique(tags)}"
