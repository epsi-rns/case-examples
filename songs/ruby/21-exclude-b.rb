tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

def exclude(val, tags)
  tags.delete(val)
  tags
end

puts "#{exclude('rok', tags)}"
