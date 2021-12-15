require_relative 'MySongs'
include Songs

tags = SONGS
  .map { |song| song['tags'] }
  .compact
  .flatten
  .uniq

puts "#{tags}"
