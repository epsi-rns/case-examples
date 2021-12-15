require_relative 'MySongs'
include Songs

tagss = SONGS.map do |song|
  song['tags']
end.compact

puts "#{tagss}"
