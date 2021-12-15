require_relative 'MyStructSongs'
include StructSongs

tagss = SONGS
  .map { |song| song.tags }
  .compact
  .flatten
  .uniq

puts "#{tagss}"
