require "./my-songs"

tagss = songs
  .map { |song| song.tags }
  .select { |tags| tags != [] of String } 

puts tagss
