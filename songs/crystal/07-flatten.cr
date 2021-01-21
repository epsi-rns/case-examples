require "./my-songs"

def flatten()
  tags = [] of String
  
  songs.each { |song| 
    if song.tags != [] of String
      song.tags.each { |tag| tags << tag }
   end  
  }
  
  tags
end

puts flatten()
