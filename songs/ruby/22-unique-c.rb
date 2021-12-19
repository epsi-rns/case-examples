tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def unique(tags)
  if tags.length() <= 1 then
    tags
  else
    head, *tail = tags
    tail.delete(head)
    return [head] + unique(tail)
  end
end

puts "#{unique(tags)}"
