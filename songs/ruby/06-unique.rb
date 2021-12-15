require_relative 'MySongs'
include Songs

tagss = SONGS
  .map { |song| song['tags'] }
  .select { |tags| tags != nil } 
  .flatten
  .uniq

puts "#{tagss}"
