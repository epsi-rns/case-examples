require_relative 'MySongs'
include Songs

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

tags = SONGS
  .map { |song| song['tags'] }
  .compact.flatten

puts "#{unique(tags)}"
