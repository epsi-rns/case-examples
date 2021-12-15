tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def exclude(val, tags)
  tags.map{ |tag| tag unless tag == val }
    .compact
end

puts "#{exclude('rock', tags)}"
