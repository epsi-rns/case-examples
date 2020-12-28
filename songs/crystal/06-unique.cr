require "./my-songs"

puts songs
  .map { |song| song.tags }
  .select { |tags| tags != [] of String }
  .flatten
  .uniq
