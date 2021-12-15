require_relative 'MySongs'
include Songs

tagss = SONGS.map { |song|
  song['tags'] if song['tags'] != nil }

puts "#{tagss}"
