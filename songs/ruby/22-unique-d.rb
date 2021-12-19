require_relative 'MySongs'
include Songs

def unique(tags)
  if tags.length() <= 1 then
    tags
  else
    head, *tail = tags
    tail.delete(head)
    return [head] + unique(tail)
  end
end

tags = SONGS
  .map { |song| song['tags'] }
  .compact.flatten

puts "#{unique(tags)}"
