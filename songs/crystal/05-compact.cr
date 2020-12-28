require "./my-songs"

tagss = songs.compact_map do |song|
  song.tags  if song.tags != [] of String
end 

puts tagss
