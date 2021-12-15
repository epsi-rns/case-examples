require_relative 'MySongs'
include Songs

tagss = SONGS.filter_map do |song|
  song['tags'] if song['tags'] != nil
end 

puts "#{tagss}"
